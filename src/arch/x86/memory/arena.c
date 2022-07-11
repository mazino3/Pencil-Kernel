#include "memory.h"
#include "debug.h"
#include "global.h"
#include "interrupt.h"
#include "list.h"
#include "string.h"
#include "sync.h"
#include "thread.h"

#include "print.h"

PRIVATE struct mem_block* arena2block(struct arena* a,int idx);

void init_block(struct mem_desc* arr_desc)
{
    int idx;
    int block_size = 32;
    for(idx = 0;idx < MEM_DESCS;idx++)
    {
        arr_desc[idx].block_size = block_size;
        arr_desc[idx].blocks = ((PG_SIZE - sizeof(struct arena)) / block_size);
        list_init(&(arr_desc[idx].free_list));
        block_size *= 2;
    }
    return;
}

PRIVATE struct mem_block* arena2block(struct arena* a,int idx)
{
    return ((struct mem_block*)((((uint32_t)a) + sizeof(struct arena)) + (idx * (a->desc->block_size))));
}

PRIVATE struct arena* block2arena(struct mem_block* b)
{
    return ((struct arena*)((uint32_t)b & 0xfffff000));
}

void* sys_malloc(int size)
{
    log("Memory Alloc ");
    enum pool_flage PF;
    struct MEMMAN* mem_pool;
    int pool_size;
    struct mem_desc* desc;
    struct task_struct* cur_thread;
    cur_thread = running_thread();
    if(cur_thread->page_dir == NULL)
    {
        PF = PF_KERNEL;
        pool_size = kernel_pool.pages * PG_SIZE;
        mem_pool = &kernel_pool;
        desc = k_desc;
    }
    else
    {
        PF = PF_USER;
        pool_size = user_pool.pages * PG_SIZE;
        mem_pool = &user_pool;
        desc = cur_thread->u_desc;
    }
    if(size > pool_size)
    {
        return NULL;
    }
    struct arena* a;
    struct mem_block* b;
    lock_acquire(&(mem_pool->lock));
    if(size < MALLOC_MAX_SIZE)
    {
        log("alloc general memory");
        int idx;
        for(idx = 0;idx < MEM_DESCS;idx++)
        {
            if(size <= desc[idx].blocks)
            {
                break;
            }
        }
        if(list_empty(&(desc[idx].free_list))) /* 内存池已满 */
        {
            a = page_alloc(PF,1);
            if(a == NULL) /* 无法分配 */
            {
                log("arena is NULL");
                lock_release(&(mem_pool->lock));
                return NULL;
            }
           //  memset(a,0,PG_SIZE);
            /* 初始化 */
            a->desc = &desc[idx];
            a->large = false;
            a->cnt = desc[idx].blocks;
            int block_idx;
            enum intr_status old_status = intr_disable();
            for(block_idx = 0;block_idx < desc[idx].blocks;block_idx++)
            {
                b = arena2block(a,block_idx);
                b->free.data = b;
                ASSERT(!(list_find(&(a->desc->free_list),&(b->free))));
                list_append(&(a->desc->free_list),&(b->free));
            }
            intr_set_status(old_status);
        }
        /* 获取一个内存块 */
        b = list_pop(&(desc[idx].free_list))->data;
        // memset(b,0,desc[idx].block_size);
        a = block2arena(b);
        a->cnt--;
        lock_release(&(mem_pool->lock));
        return ((void*)b);
    }
    else /* 要分配地内存大小超过最大值 */
    {
        log("alloc large memory");
        int pg_cnt;
        pg_cnt = DIV_ROUND_UP(size + sizeof(struct arena),PG_SIZE);
        a = page_alloc(PF,pg_cnt);
        if(a == NULL)
        {
            lock_release(&(mem_pool->lock));
            return NULL;
        }
        memset(a,0,pg_cnt * PG_SIZE);
        a->desc = NULL;
        a->cnt = pg_cnt;
        a->large = true;
        lock_release(&(mem_pool->lock));
        return ((void*)(a + 1));
    }
    return NULL;
}



void sys_free(void* vaddr)
{
    log("Memory Free");
    if(vaddr == NULL)
    {
        return;
    }
    enum pool_flage pf;
    struct MEMMAN* pool;
    if((running_thread()->page_dir) == NULL)
    {
        pf = PF_KERNEL;
        pool = &kernel_pool;
    }
    else
    {
        pf = PF_USER;
        pool = &user_pool;
    }
    struct mem_block* b;
    struct arena* a;
    lock_acquire(&(pool->lock));
    b = vaddr;
    a = block2arena(b);
    if(a->desc == NULL && a->large == true)
    {
        page_free(pf,a,a->cnt);
    }
    else
    {
        put_str(0x06,"b->free:");
        put_uint(0x06,&(b->free),16);
        put_char(0,'\n');
        put_str(0x06,"a->desc->free_list:");
        put_uint(0x06,&(a->desc->free_list),16);

        list_append(&(a->desc->free_list),&(b->free));
        a->cnt++;
        if(a->cnt == a->desc->blocks)
        {
            int idx;
            for(idx = 0;idx < a->desc->blocks;idx++)
            {
                struct mem_block* b = arena2block(a,idx);
                ASSERT(list_find(&(a->desc->free_list),&(b->free)));
                list_remove(&(b->free));
            }
            page_free(pf,a,1);
        }
    }
    lock_release(&(pool->lock));
    return;
}