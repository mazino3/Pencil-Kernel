#include "memory.h"
#include "debug.h"
#include "global.h"
#include "print.h"
#include "stdint.h"
#include "string.h"
#include "sync.h"
#include "thread.h"

/* 物理地址管理 */
struct MEMMAN kernel_pool;
struct MEMMAN user_pool;

/* 虚拟地址管理 */
struct MEMMAN kernel_vaddr;

struct MEMINFO kpinfo[MEMMAN_MAX];
struct MEMINFO kvinfo[MEMMAN_MAX];
struct MEMINFO upinfo[MEMMAN_MAX];

void init_memory()
{
    /* 判断是否要手动计算内存容量 */
    if(TotalMem_l == 0 && TotalMem_h == 0)
    {
        struct ARDS* ards;
        ards = (struct ARDS*)ARDS_BUF;
        int i;
        uint64_t total_size = 0;
        put_str(0x07,"Ards:\n");
        for(i = 0;i < ARDS_NR;i++)
        {
                put_str(0x07," Base:\t\t0x");
                put_uint(0x07,ards->BaseAddrLow,16);
                put_str(0x07," \n Length:\t0x");
                put_uint(0x07,ards->LengthLow,16);
                put_str(0x07," \n type:\t\t");
                put_uint(0x07,ards->Type,16);
                put_str(0x07,"\n");
                /* 0x100000以后的地址理论上是全部可用的 */
            if(ards->BaseAddrLow == 0x100000 && ards->Type == 1)
            {
                total_size = ards->BaseAddrLow + ards->LengthLow;
                break;
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

    init_memman(&kernel_pool,kpinfo);
    init_memman(&kernel_vaddr,kvinfo);
    init_memman(&user_pool,upinfo);

    pgman_free(&kernel_pool,(void*)(KERNEL_PAGE_DIR_TABLE_POS + 0x200000),k_Total / PG_SIZE);
    pgman_free(&user_pool,(void*)(KERNEL_PAGE_DIR_TABLE_POS + 0x200000 + k_Total),u_Total / PG_SIZE);
    /*
    * 0x00000000 ~ 0x003fffff --> 0xc0000000 ~ 0xc03fffff
    * 为了使虚拟地址连续,从0xc0400000开始
     */
    pgman_free(&kernel_vaddr,(void*)0xc0400000,(0xe0000000 - 0xc0400000) / PG_SIZE);
    return;
}

void init_memman(struct MEMMAN* memman,struct MEMINFO* free)
{
    lock_init(&(memman->lock));
    memman->frees = 0;
    memman->maxfrees = 0;
    memman->lostsize = 0;
    memman->lostcnt = 0;
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

void* pgman_alloc(struct MEMMAN* memman,uint32_t pg_cnt)
{
    ptr_t pg_nr;
    int i;
    int j;
    /* 遍历所有内存使用信息,找到合适的大小 */
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
            return (void*)(pg_nr * PG_SIZE); /* 返回找到地页的起始地址 */
        }
    }
    return NULL;
}

int pgman_free(struct MEMMAN* memman,void* pg_addr,uint32_t pg_cnt)
{
    int i;
    int j;
    int k;
    int pg_nr = (ptr_t)pg_addr / PG_SIZE;
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
        return 0;
    }
    /* 不能移动 */
    PANIC("Page Free Error !");
    memman->lostcnt++;
    memman->lostsize += pg_cnt;
    return 1;
}

void* pde_ptr(void* vaddr)
{
    return ((void*)(0xfffff000 + (PDE_IDX((int)vaddr) * 4)));
}

void* pte_ptr(void* vaddr)
{
    return ((void*)((0xffc00000) + (((int)vaddr & 0xffc00000) >> 10) + (PTE_IDX((int)vaddr) * 4)));
}

void page_table_add(void* _vaddr,void* _paddr)
{
    uint32_t* pde = pde_ptr(_vaddr);
    uint32_t* pte = pte_ptr(_vaddr);
    // uint32_t vaddr = (uint32_t)_vaddr;
    uint32_t paddr = (uint32_t)_paddr;

    if(*pde & 0x00000001)
    {
        if(!(*pte & 0x00000001))
        {
            *pte = (paddr | PG_US_U | PG_RW_W | PG_P);
        }
        else
        {
            ;
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

void* page_alloc(enum pool_flage pf,uint32_t page_count)
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

void* get_kernel_page(uint32_t page_count)
{
    void* vaddr = page_alloc(PF_KERNEL,page_count);
    if(vaddr != NULL)
    {
        memset(vaddr,0,page_count * PG_SIZE);
    }
    put_str(0x07," Memalloc: ");
    put_uint(0x07,(uint32_t)vaddr,16);
    return vaddr;
}

void* get_user_page(uint32_t page_count)
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

void* addr_v2p(void* vaddr)
{
    uint32_t* pte = pte_ptr(vaddr);
    return (void*)((*pte & 0xfffff000) | ((uint32_t)vaddr & 0x00000fff));
}
