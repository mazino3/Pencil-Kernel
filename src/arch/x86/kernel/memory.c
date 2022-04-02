#include "memory.h"
#include "debug.h"
#include "global.h"
#include "print.h"
#include "stdint.h"
#include "string.h"

/* 物理地址管理 */
struct MEMMAN kernel_pool;
struct MEMMAN user_pool;

/* 虚拟地址管理 */
struct MEMMAN kernel_vaddr;
struct MEMMAN user_vaddr;

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
    k_Total = (TotalMem_l - 0x00a02000) / 2;
    u_Total = TotalMem_l - k_Total;
    mem_free_page(&kernel_pool,(void*)0x00a02000,k_Total);
    mem_free_page(&user_pool,(void*)(0x00a02000 + k_Total),u_Total);
    mem_free_page(&kernel_vaddr,(void*)0xc0a02000,0x3dffffff);
    return;
}

void init_memmam(struct MEMMAN* memman)
{
    memman->frees = 0;
    memman->maxfrees = 0;
    memman->lostsize = 0;
    memman->lostcnt = 0;
    return;
}

uint32_t TotalFreeSize(struct MEMMAN* memman)
{
    uint32_t total = 0;
    int i;
    for(i = 0;i < (memman->frees);i++)
    {
        total += memman->free[i].size;
    }
    return total;
}

void* mem_alloc(struct MEMMAN* memman,uint32_t size)
{
    void* addr;
    int i;
    int j;
    /* 遍历所有内存使用信息,找到合适的大小 */
    for(i = 0;i < (memman->frees);i++)
    {
        /* 如果大小合适 */
        if(memman->free[i].size >= size)
        {
            /* 记录可用空间的大小 */
            addr = memman->free[i].addr;
            /* 可用地址向后推size大小 */
            (memman->free[i].addr) += size;
            /* 可用空间大小减小 */
            memman->free[i].size -= size;
            /* 如果没有可用空间,可用信息减掉一条 */
            if(memman->free[i].size == 0)
            {
                memman->frees --; /* 减一条 */
                /* 把空的那一条覆盖掉 */
                for(j = i;j < (memman->frees);j++)
                {
                    memman->free[j] = memman->free[j + 1];
                }
            }
            return addr;
        }
    }
    return NULL;
}

void* mem_alloc_page(struct MEMMAN* memman,uint32_t page_count)
{
    return mem_alloc(memman,page_count * 0x1000);
}

int mem_free(struct MEMMAN* memman,void* addr,uint32_t size)
{
    int i;
    int j;
    int k;
    /* 寻找memman->free[i],使memman->free[i - 1].addr < addr < free[i].addr */
    for(i = 0;i < (memman->frees);i++)
    {
        /* memman->free[i].addr > addr,那么memman->free[i - 1] < addr */
        if(memman->free[i].addr > addr)
        {
            break;
        }
    }
    /* 前面有可用的内存 */
    if(i > 0)
    {
        /* 可以和前面的归到一起 */
        if(((void*)((((uint8_t*)(memman->free[i - 1].addr)) + memman->free[i - 1].size))) == addr)
        {
            /* 可用信息长度增加 */
            memman->free[i - 1].size += size;
            /* 后面也可以合并 */
            if(i < (memman->frees))
            {
                if(((void*)((uint8_t*)addr + size)) == memman->free[i].addr)
                {
                    memman->free[i - 1].size += memman->free[i].size;
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
        if(((void*)((uint8_t*)addr + size)) == memman->free[i].addr)
        {
            memman->free[i].addr = addr;
            memman->free[i].size += size;
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
        memman->free[i].addr = addr;
        memman->free[i].size = size;
        return 0;
    }
    /* 不能移动 */
    memman->lostcnt++;
    memman->lostsize += size;
    return 1;
}

int mem_free_page(struct MEMMAN* memman,void* addr,uint32_t page_count)
{
    return mem_free(memman,addr,page_count * 0x1000);
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
        void* pde_paddr = (void*)mem_alloc_page(&kernel_pool,1);
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
    struct MEMMAN* memory_pool = (pf == Kernel_pool ? &kernel_pool : &user_pool);

    vaddr_start = (void*)mem_alloc_page(memory_pool,page_count);
    if(vaddr_start == NULL)
    {
        return NULL;
    }
    vaddr = (uint32_t)vaddr_start;
    while(count > 0)
    {
        count--;
        paddr = (void*)mem_alloc_page(memory_pool,1);
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
    void* vaddr = page_alloc(Kernel_pool,page_count);
    if(vaddr != NULL)
    {
        memset(vaddr,0,page_count * PG_SIZE);
    }
    put_str(0x07,"Mem_alloc: 0x");
    put_uint(0x07,(unsigned int)vaddr,16);
    put_char(0x07,'\n');
    return vaddr;
}