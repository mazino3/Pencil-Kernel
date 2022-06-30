#include "tss.h"
#include "debug.h"
#include "global.h"
#include "string.h"
#include "thread.h"

static struct TSS32 tss;

static struct SEGMDESC make_segmdesc(uint32_t base,uint32_t limit,uint16_t access)
{
    struct SEGMDESC desc;
    desc.limit_low    = (limit & 0x0000ffff);
    desc.base_low     = (base & 0x0000ffff);
    desc.base_mid     = ((base & 0x00ff0000) >> 16);
    desc.access_right = (access & 0x00ff);
    desc.limit_high   = (((limit >> 16) & 0x0f) | ((access >> 8 ) & 0xf0));
    desc.base_high    = ((base >> 24) & 0xff);
    return desc;
}

void init_tss()
{
    ASSERT(GDT_PTR == (void*)0xc0001000);
    uint32_t tss_size = sizeof(tss);
    memset(&tss,0,tss_size);
    tss.ss0 = SelectorData32_K;
    tss.iomap = tss_size;
    
    *(GDT_PTR + 3) = make_segmdesc((uint32_t)&tss,tss_size - 1,AR_TSS32);
    *(GDT_PTR + 4) = make_segmdesc(0,0xfffff,AR_CODE32_DPL3);
    *(GDT_PTR + 5) = make_segmdesc(0,0xfffff,AR_DATA32_DPL3);

    uint64_t gdt_opt = (((uint64_t)0 + (uint32_t)GDT_PTR) << 16) + (8 * 6 - 1);
    __asm__ __volatile__("lgdt %0"::"m"(gdt_opt):);
    __asm__ __volatile__("ltr %w0"::"r"(SelectorTSS32):);
    return;
}

void update_tss_esp0(struct task_struct* pthread)
{
    tss.esp0 = ((uint32_t*)((uint32_t)pthread + PG_SIZE));
    return;
}