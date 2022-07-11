#include "memory.h"
#include "debug.h"
#include "global.h"
#include "list.h"
#include "print.h"
#include "stdint.h"
#include "string.h"
#include "sync.h"
#include "thread.h"


struct mem_desc k_desc[MEM_DESCS];

/* 物理地址管理 */
struct MEMMAN kernel_pool;
struct MEMMAN user_pool;

/* 虚拟地址管理 */
struct MEMMAN kernel_vaddr;

struct MEMINFO kpinfo[MEMMAN_MAX];
struct MEMINFO kvinfo[MEMMAN_MAX];
struct MEMINFO upinfo[MEMMAN_MAX];

PRIVATE uint32_t user_pool_start;

void init_memory()
{
    /* 判断是否要手动计算内存容量 */
    if(TotalMem_l == 0 && TotalMem_h == 0)
    {
        struct ARDS* ards;
        ards = (struct ARDS*)ARDS_BUF;
        int i;
        uint64_t total_size = 0;
        for(i = 0;i < ARDS_NR;i++)
        {
            if(ards->Type == 1)
            {
                total_size = ((((uint64_t)0 + ards->BaseAddrHigh) << 32) + ards->BaseAddrLow) + ((((uint64_t)0 +ards->LengthHigh) << 32) + ards->LengthLow);
                // break;
            }
            ards++;
        }
        if(total_size == 0)
        {
            PANIC("No Memory available!");
        }
        if(total_size > 0x3fffffff)
        {
            total_size = 0x3fffffff;
        }
        TotalMem_l = (total_size + 0x100000);
    }
    uint32_t k_Total;
    uint32_t u_Total;
    ptr_t freeMem = TotalMem_l - (KERNEL_PAGE_DIR_TABLE_POS + 0x200000);
    k_Total = freeMem / 2;
    u_Total = freeMem - k_Total;

    init_memman(&kernel_pool,k_Total / PG_SIZE,kpinfo);
    init_memman(&kernel_vaddr,0xffffffff / PG_SIZE,kvinfo);
    init_memman(&user_pool,u_Total / PG_SIZE,upinfo);

    pgman_free(&kernel_pool,(void*)(KERNEL_PAGE_DIR_TABLE_POS + 0x200000),k_Total / PG_SIZE);
    pgman_free(&user_pool,(void*)(KERNEL_PAGE_DIR_TABLE_POS + 0x200000 + k_Total),u_Total / PG_SIZE);
    user_pool_start = (KERNEL_PAGE_DIR_TABLE_POS + 0x200000 + k_Total);
    /*
    * 0x00000000 ~ 0x003fffff --> 0xc0000000 ~ 0xc03fffff
    * 为了使虚拟地址连续,从0xc0400000开始
     */
    pgman_free(&kernel_vaddr,(void*)0xc0400000,(0xe0000000 - 0xc0400000) / PG_SIZE);
    init_block(k_desc);
    return;
}

void init_memman(struct MEMMAN* memman,uint32_t pages,struct MEMINFO* free)
{
    lock_init(&(memman->lock));
    memman->frees = 0;
    memman->maxfrees = 0;
    memman->lostsize = 0;
    memman->lostcnt = 0;
    ASSERT(pages != 0);
    memman->pages = pages;
    ASSERT(free != NULL);
    memman->free = free;
    return;
}

uint32_t TotalFreeSize(struct MEMMAN* memman)
{
    uint32_t total = 0;
    int i;
    for(i = 0;i < (memman->frees);i++)
    {
        total += memman->free[i].pg_cnt;
    }
    return total;
}

void* pde_ptr(void* vaddr)
{
    return ((void*)(0xfffff000 + (PDE_IDX((int)vaddr) * 4)));
}

void* pte_ptr(void* vaddr)
{
    return ((void*)((0xffc00000) + (((int)vaddr & 0xffc00000) >> 10) + (PTE_IDX((int)vaddr) * 4)));
}

void* addr_v2p(void* vaddr)
{
    uint32_t* pte = pte_ptr(vaddr);
    return (void*)((*pte & 0xfffff000) | ((uint32_t)vaddr & 0x00000fff));
}

void* pgman_alloc(struct MEMMAN* memman,int pg_cnt)
{
    ptr_t pg_nr;
    int i;
    int j;
    /* 遍历所有内存使用信息,找到合适的大小 */
    lock_acquire(&(memman->lock));
    for(i = 0;i < (memman->frees);i++)
    {
        /* 如果大小合适 */
        if(memman->free[i].pg_cnt >= pg_cnt)
        {
            /* 记录可用空间的大小 */
            pg_nr = memman->free[i].pg_nr;
            /* 可用地址向后推size大小 */
            (memman->free[i].pg_nr) += pg_cnt;
            /* 可用空间大小减小 */
            memman->free[i].pg_cnt -= pg_cnt;
            /* 如果没有可用空间,可用信息减掉一条 */
            if(memman->free[i].pg_cnt == 0)
            {
                memman->frees--; /* 减一条 */
                /* 把空的那一条覆盖掉 */
                for(j = i;j < (memman->frees);j++)
                {
                    memman->free[j] = memman->free[j + 1];
                }
            }
            lock_release(&(memman->lock));
            return (void*)(pg_nr * PG_SIZE); /* 返回找到地页的起始地址 */
        }
    }
    lock_release(&(memman->lock));
    return NULL;
}

void page_table_add(void* vaddr,void* phyaddr)
{
    uint32_t* pde = pde_ptr(vaddr);
    uint32_t* pte = pte_ptr(vaddr);
    uint32_t paddr = (uint32_t)phyaddr;

    if(*pde & 0x00000001)
    {
        if(!(*pte & 0x00000001))
        {
            *pte = (paddr | PG_US_U | PG_RW_W | PG_P);
        }
    }
    else
    {
        void* pde_paddr = (void*)pgman_alloc(&kernel_pool,1);
        *pde = ((uint32_t)pde_paddr | PG_US_U | PG_RW_W | PG_P);
        memset((void*)((int)pte & 0xfffff000),0,PG_SIZE);
        *pte = (paddr | PG_US_U | PG_RW_W | PG_P);
    }
    return;
}

void* page_alloc(enum pool_flage pf,int page_count)
{
    void* vaddr_start;
    uint32_t vaddr;
    void* paddr;
    uint32_t count = page_count;
    struct MEMMAN* memory_pool = (pf == PF_KERNEL ? &kernel_pool : &user_pool);
    struct MEMMAN* vaddr_pool = (pf == PF_KERNEL ? &kernel_vaddr : &kernel_vaddr);
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
        page_table_add((void*)vaddr,paddr);
        vaddr += PG_SIZE;
    }
    return vaddr_start;
}

void* get_kernel_page(int page_count)
{
    void* vaddr = page_alloc(PF_KERNEL,page_count);
    if(vaddr != NULL)
    {
        memset(vaddr,0,page_count * PG_SIZE);
    }
    // put_str(0x07," Memalloc: ");
    // put_uint(0x07,(uint32_t)vaddr,16);
    return vaddr;
}

void* get_user_page(int page_count)
{
    void* vaddr = page_alloc(PF_USER,page_count);
    if(vaddr != NULL)
    {
        memset(vaddr,0,page_count * PG_SIZE);
    }
    return vaddr;
}

void* get_a_page(enum pool_flage pf,void* vaddr)
{
    struct MEMMAN* memory_pool = (pf == PF_KERNEL ? &kernel_pool : &user_pool);
    struct task_struct* cur = running_thread();
    if(cur->page_dir != NULL && pf == PF_USER)
    {
        pgman_alloc(&cur->prog_vaddr,1);
    }
    else if(cur->page_dir == NULL && pf == PF_KERNEL)
    {
        pgman_alloc(&kernel_vaddr,1);
    }
    else
    {
        PANIC("get_a_page: not allow kernel alloc userspace or user alloc kernelspace by get_a_page()");
    }
    void* page_paddr = pgman_alloc(memory_pool,1);
    ASSERT(page_paddr != NULL);
    page_table_add((void*)vaddr,page_paddr);
    return vaddr;
}

int pgman_free(struct MEMMAN* memman,void* pg_addr,int pg_cnt)
{
    int i;
    int j;
    int k;
    int pg_nr = (ptr_t)pg_addr / PG_SIZE;

    lock_acquire(&(memman->lock));
    /* 寻找memman->free[i],使memman->free[i - 1].pg_nr < pg_nr < free[i].pg_nr */
    for(i = 0;i < (memman->frees);i++)
    {
        /* memman->free[i].pg_nr > pg_nr,那么memman->free[i - 1].pg_nr < pg_nr */
        if(memman->free[i].pg_nr > pg_nr)
        {
            break;
        }
    }
    /* 前面有可用的内存 */
    if(i > 0)
    {
        /* 可以和前面的归到一起 */
        if(((memman->free[i - 1].pg_nr) + memman->free[i - 1].pg_cnt) == pg_nr)
        {
            /* 可用信息长度增加 */
            memman->free[i - 1].pg_cnt += pg_cnt;
            /* 后面也可以合并 */
            if(i < (memman->frees))
            {
                if((pg_nr + pg_cnt) == memman->free[i].pg_nr)
                {
                    memman->free[i - 1].pg_cnt += memman->free[i].pg_cnt;
                    memman->frees--;
                    for(j = i;j < (memman->frees);j++)
                    {
                        memman->free[j] = memman->free[j + 1];
                    }
                }
            }
            /* 完成 */
            lock_release(&(memman->lock));
            return 0;
        }
    }
    /* 不能和前面归到一起的话会来到这里 */
    if(i < (memman->frees))
    {
        if((pg_nr + pg_cnt) == memman->free[i].pg_nr)
        {
            memman->free[i].pg_nr = pg_nr;
            memman->free[i].pg_cnt += pg_cnt;
            lock_release(&(memman->lock));
            return 0;
        }
    }
    /* 前后都不能合并 */
    if((memman->frees) < MEMMAN_MAX)
    {
        /* free[i]往后移动,腾出空间 */
        for(k = (memman->frees);k > i;k++)
        {
            memman->free[k] = memman->free[k - 1];
        }
        memman->frees++;
        if((memman->maxfrees) < (memman->frees))
        {
            memman->maxfrees = memman->frees;
        }
        memman->free[i].pg_nr = pg_nr;
        memman->free[i].pg_cnt = pg_cnt;
        lock_release(&(memman->lock));
        return 0;
    }
    /* 不能移动 */
    PANIC("Page Free Error !");
    memman->lostcnt++;
    memman->lostsize += pg_cnt;
    lock_release(&(memman->lock));
    return 1;
}

void page_table_remove(void* vaddr)
{
    uint32_t* pte = pte_ptr(vaddr);
    *pte &= ~PG_P;
    __asm__ __volatile__("invlpg %[vaddr]"::[vaddr]"m"(vaddr):"memory");
    return;
}

void paddr_free(void* paddr)
{
    struct MEMMAN* pool;
    if((uint32_t)paddr >= user_pool_start)
    {
        pool = &user_pool;
    }
    else
    {
        pool = &kernel_pool;
    }
    pgman_free(pool,paddr,1);
    return;
}

void vaddr_free(enum pool_flage pf,void* vaddr,uint32_t free_pg_cnt)
{
    if(pf == PF_KERNEL)
    {
        pgman_free(&kernel_vaddr,vaddr,free_pg_cnt);
    }
    else
    {
        struct task_struct* cur_thread = running_thread();
        pgman_free(&(cur_thread->prog_vaddr),vaddr,free_pg_cnt);
    }
    return;
}

void page_free(enum pool_flage pf,void* vaddr,int free_pg_cnt)
{
    void* pg_paddr;
    uint32_t pg_cnt;
    ASSERT(free_pg_cnt >= 1 && (uint32_t)vaddr % PG_SIZE == 0);
    pg_paddr = addr_v2p(vaddr);
    ASSERT(((ptr_t)pg_paddr % PG_SIZE) == 0 && ((ptr_t)pg_paddr) >= KERNEL_PAGE_DIR_TABLE_POS + 0x200000);
    /* 用户释放内存 */
    if((ptr_t)pg_paddr >= user_pool_start)
    {
        pg_cnt = 0;
        while(pg_cnt < free_pg_cnt)
        {
            pg_paddr = addr_v2p(vaddr);
            paddr_free(pg_paddr);
            page_table_remove(vaddr);
            pg_cnt++;
        }
        vaddr_free(pf,vaddr,free_pg_cnt);
    }
    else
    {
        pg_cnt = 0;
        while(pg_cnt < free_pg_cnt)
        {
            pg_paddr =addr_v2p(vaddr);
            paddr_free(pg_paddr);
            page_table_remove(vaddr);
            pg_cnt++;
        }
        vaddr_free(pf,vaddr,free_pg_cnt);
    }
    return;
}