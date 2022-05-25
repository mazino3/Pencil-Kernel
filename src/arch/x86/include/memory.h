#ifndef __MEMORY_H__
#define __MEMORY_H__

#include "stdint.h"
#include "sync.h"

#define MEMMAN_MAX 4000

#define PDE_IDX(vaddr) ((vaddr & 0xffc00000) >> 22)
#define PTE_IDX(vaddr) ((vaddr & 0x003ff000) >> 12)

struct ARDS
{
    uint32_t BaseAddrLow;
    uint32_t BaseAddrHigh;
    uint32_t LengthLow;
    uint32_t LengthHigh;
    uint32_t Type;
};

struct MEMINFO
{
    ptr_t addr;    /* 一块内存的起始地址物理地址 */
    uint32_t size; /* 大小(单位:页) */
};

struct MEMMAN
{
    struct lock lock;
    uint32_t frees;                  /* 可用内存信息数量 */
    uint32_t maxfrees;               /* frees到达过的最大值(越大,内存越分散) */
    uint32_t lostsize;               /* 回收失败的内存大小 */
    uint32_t lostcnt;                /* 回收失败的次数 */
    struct MEMINFO* free; /* 内存使用信息 */
};

enum pool_flage
{
    KernelPool = 1,
    UserPool,
};

/* 物理地址管理 */
extern struct MEMMAN kernel_pool;
extern struct MEMMAN user_pool;

/* 虚拟地址管理 */
extern struct MEMMAN kernel_vaddr;
extern struct MEMMAN user_vaddr;

void init_memory();
void init_memman(struct MEMMAN* memman,struct MEMINFO* free);
uint32_t TotalFreeSize(struct MEMMAN* memman);
void* mem_alloc(struct MEMMAN* memman,uint32_t size);
void* mem_alloc_page(struct MEMMAN* memman,uint32_t size);
int mem_free(struct MEMMAN* memman,void* paddr,uint32_t size);
int mem_free_page(struct MEMMAN* memman,void* addr,uint32_t size);
void* pde_ptr(void* vaddr);
void* pte_ptr(void* vaddr);
void page_table_add(void* _vaddr,void* _paddr);
void* page_alloc(enum pool_flage pf,uint32_t page_count);
void* get_kernel_page(uint32_t page_count);
void* get_user_page(uint32_t page_count);
void* get_a_page(enum pool_flage pf,void* vaddr);
void* addr_v2p(void* vaddr);

#endif /* __MEMORY_H__ */
