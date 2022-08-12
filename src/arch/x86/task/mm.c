#include "task.h"

#include "apilib.h"
#include "debug.h"
#include "global.h"
#include "interrupt.h"
#include "list.h"
#include "memory.h"
#include "message.h"
#include "process.h"
#include "stdio.h"
#include "string.h"
#include "syscall.h"
#include "thread.h"

PRIVATE void* mm_malloc(int size,struct task_struct* cur_thread);
PRIVATE void mm_free(void* vaddr,struct task_struct* cur_thread);

PRIVATE void* mm_page_alloc(enum pool_flage pf,int page_count,struct task_struct* cur_thread);
PRIVATE void mm_page_table_add(void* vaddr,void* phyaddr,struct task_struct* cur_thread);

void MM_task()
{
    struct MESSAGE msg;
    struct msg1 msg1;
    struct msg2 msg2;
    struct msg3 msg3;
    pid_t source;
    void* ret_addr;
    struct task_struct* mm = running_thread();
    void* pgdir = NULL;
    uint8_t* buf;
    while(1)
    {
        resetmsg(&msg);
        source = NO_TASK;
        send_recv(RECEIVE,ANY,&msg);
        source = msg.source;
        ret_addr = NULL;
        switch(msg.type)
        {
            case MM_MALLOC:
                msg1 = msg.msg1;
                pgdir = mm->page_dir;
                mm->page_dir = pid2thread(source)->page_dir;
                page_dir_activate(mm);
                ret_addr = mm_malloc(msg1.m1i1,pid2thread(source));
                mm->page_dir = pgdir;
                page_dir_activate(mm);
                msg.msg2.m2p1 = ret_addr;
                send_recv(SEND,source,&msg);
                break;

            case MM_FREE:
                msg2 = msg.msg2;
                pgdir = mm->page_dir;
                mm->page_dir = pid2thread(source)->page_dir;
                page_dir_activate(mm);
                mm_free(msg2.m2p1,pid2thread(msg.source));
                mm->page_dir = pgdir;
                page_dir_activate(mm);
                send_recv(SEND,source,&msg);
                break;

            case MM_COPY:
                msg3 = msg.msg3;
                buf = kmalloc(msg3.m3i1);
                /* 切换到src的页表 */
                pgdir = mm->page_dir;
                mm->page_dir = pid2thread(msg3.m3i2)->page_dir;
                page_dir_activate(mm);
                /* 复制到内核缓存区 */
                memcpy(buf,msg3.m3p2,msg3.m3i1);
                /* 切换为dst页表 */
                mm->page_dir = pid2thread(source)->page_dir;
                page_dir_activate(mm);
                /* 复制给dst */
                memcpy(msg3.m3p1,buf,msg3.m3i1);
                /* 恢复MM的页表 */
                mm->page_dir = pgdir;
                page_dir_activate(mm);
                kfree(buf);
                send_recv(SEND,source,&msg);
                break;
        }
    }
}

PRIVATE struct mem_block* arena2block(struct arena* a,int idx)
{
    return ((struct mem_block*)((((uint32_t)a) + sizeof(struct arena)) + (idx * (a->desc->block_size))));
}

PRIVATE struct arena* block2arena(struct mem_block* b)
{
    return ((struct arena*)((uint32_t)b & 0xfffff000));
}

PRIVATE void* mm_malloc(int size,struct task_struct* cur_thread)
{
    enum pool_flage PF;
    // struct MEMMAN* mem_pool;
    int pool_size;
    struct mem_desc* desc;
    if(cur_thread->page_dir == NULL)
    {
        PF = PF_KERNEL;
        pool_size = kernel_pool.pages * PG_SIZE;
        // mem_pool = &kernel_pool;
        desc = k_desc;
    }
    else
    {
        PF = PF_USER;
        pool_size = user_pool.pages * PG_SIZE;
        // mem_pool = &user_pool;
        desc = cur_thread->u_desc;
    }
    if(size > pool_size)
    {
        return NULL;
    }
    struct arena* a;
    struct mem_block* b;
    // lock_acquire(&(mem_pool->lock));
    if(size < MALLOC_MAX_SIZE)
    {
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
            a = mm_page_alloc(PF,1,cur_thread);
            if(a == NULL) /* 无法分配 */
            {
                // lock_release(&(mem_pool->lock));
                return NULL;
            }
            memset(a,0,PG_SIZE);
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
        memset(b,0,desc[idx].block_size);
        a = block2arena(b);
        a->cnt--;
        // lock_release(&(mem_pool->lock));
        return ((void*)b);
    }
    else /* 要分配地内存大小超过最大值 */
    {
        int pg_cnt;
        pg_cnt = DIV_ROUND_UP(size + sizeof(struct arena),PG_SIZE);
        a = mm_page_alloc(PF,pg_cnt,cur_thread);
        if(a == NULL)
        {
            // lock_release(&(mem_pool->lock));
            return NULL;
        }
        memset(a,0,pg_cnt * PG_SIZE);
        a->desc = NULL;
        a->cnt = pg_cnt;
        a->large = true;
        ASSERT(a->desc == NULL && a->cnt == pg_cnt && a->large == true);
        // lock_release(&(mem_pool->lock));
        return ((void*)(a + 1));
    }
    return NULL;
}

PRIVATE void mm_free(void* vaddr,struct task_struct* cur_thread)
{
    if(vaddr == NULL)
    {
        return;
    }
    enum pool_flage pf;
    // struct MEMMAN* pool;
    if((cur_thread->page_dir) == NULL)
    {
        pf = PF_KERNEL;
        // pool = &kernel_pool;
    }
    else
    {
        pf = PF_USER;
        // pool = &user_pool;
    }
    struct mem_block* b;
    struct arena* a;
    // lock_acquire(&(pool->lock));
    b = vaddr;
    a = block2arena(b);
    if(a->desc == NULL && a->large == true)
    {
        page_free(pf,a,a->cnt);
    }
    else
    {
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
    // lock_release(&(pool->lock));
    return;
}

PRIVATE void* mm_page_alloc(enum pool_flage pf,int page_count,struct task_struct* cur_thread)
{
    void* vaddr_start;
    uint32_t vaddr;
    void* paddr;
    uint32_t count = page_count;
    struct MEMMAN* memory_pool = (pf == PF_KERNEL ? &kernel_pool : &user_pool);
    struct MEMMAN* vaddr_pool = (pf == PF_KERNEL ? &kernel_vaddr : &(cur_thread->prog_vaddr));
    vaddr_start = (void*)pgman_alloc(vaddr_pool,page_count);
    if(vaddr_start == NULL)
    {
        return NULL;
    }
    vaddr = (uint32_t)vaddr_start;
    while(count > 0)
    {
        count--;
        paddr = (void*)pgman_alloc(memory_pool,1);
        if(paddr == NULL)
        {
            return NULL;
        }
        mm_page_table_add((void*)vaddr,paddr,cur_thread);
        vaddr += PG_SIZE;
    }
    return vaddr_start;
}

PRIVATE void mm_page_table_add(void* vaddr,void* phyaddr,struct task_struct* cur_thread)
{
    uint32_t* pde = pde_ptr(vaddr);
    uint32_t* pte = pte_ptr(vaddr);
    uint32_t paddr = (uint32_t)phyaddr;

    if(*pde & 0x00000001)
    {
        // ASSERT(!(*pte & 0x00000001));
        if(!(*pte & 0x00000001))
        {
            *pte = (paddr | PG_US_U | PG_RW_W | PG_P);
        }
        else
        {
            char s[31];
            sprintf(s,"pte repeat!(vaddr: %p, paddr: %p)",vaddr,paddr);
            // PANIC(s);
            *pte = (paddr | PG_US_U | PG_RW_W | PG_P);
        }
    }
    else
    {
        void* pde_paddr = (void*)pgman_alloc(&kernel_pool,1);
        *pde = ((uint32_t)pde_paddr | PG_US_U | PG_RW_W | PG_P);
        memset((void*)((int)pte & 0xfffff000),0,PG_SIZE);
        ASSERT(!(*pte & 0x00000001));
        *pte = (paddr | PG_US_U | PG_RW_W | PG_P);
    }
    return;
}