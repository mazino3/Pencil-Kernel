#ifndef __MEMORY_H__
#define __MEMORY_H__

#include "global.h"
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
    int pg_nr;     /* 一块内存的起始地址页序号 */
    uint32_t pg_cnt; /* 页数量 */
};

struct MEMMAN
{
    struct lock lock;
    uint32_t frees;                  /* 可用内存信息数量 */
    uint32_t maxfrees;               /* frees到达过的最大值(越大,内存越分散) */
    uint32_t lostsize;               /* 回收失败的内存大小 */
    uint32_t lostcnt;                /* 回收失败的次数 */
    uint32_t pages;                  /* 所管理地内存总页数 */
    struct MEMINFO* free; /* 内存使用信息 */
};

enum pool_flage
{
    PF_KERNEL = 1,
    PF_USER,
};

#define MEM_DESCS 6 /* 32B,64B,128B,256B,512B,1024B */
#define MALLOC_MAX_SIZE 1024

struct mem_block
{
    struct list_elem free;
};

struct mem_desc
{
    uint32_t block_size;
    uint32_t blocks;
    struct list free_list;
};

struct arena
{
    struct mem_desc* desc;
    uint32_t cnt;
    bool large;
};

extern struct mem_desc k_desc[MEM_DESCS];

/* 物理地址管理 */
extern struct MEMMAN kernel_pool;
extern struct MEMMAN user_pool;

/* 虚拟地址管理 */
extern struct MEMMAN kernel_vaddr;

void init_memory();
void init_memman(struct MEMMAN* memman,uint32_t pages,struct MEMINFO* free);
void init_block(struct mem_desc* arr_desc);
uint32_t TotalFreeSize(struct MEMMAN* memman);

void* pde_ptr(void* vaddr);
void* pte_ptr(void* vaddr);
void* addr_v2p(void* vaddr);

void* pgman_alloc(struct MEMMAN* memman,int pg_cnt);
void page_table_add(void* vaddr,void* phyaddr);
void* page_alloc(enum pool_flage pf,int page_count);
void* get_kernel_page(int page_count);
void* get_user_page(int page_count);
void* get_a_page(enum pool_flage pf,void* vaddr);

int pgman_free(struct MEMMAN* memman,void* pg_addr,int free_pg_cnt);
void page_table_remove(void* vaddr);
void paddr_free(void* paddr);
void vaddr_free(enum pool_flage pf,void* vaddr,uint32_t free_pg_cnt);
void page_free(enum pool_flage pf,void* pvaddr,int free_pg_cnt);

/* arena.c */
void* sys_malloc(int size);
void sys_free(void* vaddr);

#endif /* __MEMORY_H__ */
