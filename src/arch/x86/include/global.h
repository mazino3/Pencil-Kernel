#ifndef __GLOBAL_H__
#define __GLOBAL_H__

#include "stdint.h"

/* 和boot.inc中一样的数据 */
/* gdt描述符 */
struct SEGMDESC
{
    uint16_t limit_low;
    uint16_t base_low;
    uint8_t base_mid;
    uint8_t access_right;
    uint8_t limit_high;
    uint8_t base_high;
};

#define AR_G_4K 0x8000
#define AR_D_32 0x4000
#define AR_L 0x0000
#define AR_AVL 0x0000
#define AR_P 0x0080
#define AR_DPL_0 0x0000
#define AR_DPL_1 0x0020
#define AR_DPL_2 0x0040
#define AR_DPL_3 0x0060
#define AR_S_CODE 0x0010
#define AR_S_DATA 0x0010
#define AR_S_SYS 0x0000
#define AR_TYPE_CODE 0x0008 /* 可执行,非一致,不可读 */
#define AR_TYPE_DATA 0x0002 /* 不可执行,向上拓展,可写 */

#define AR_TYPE_TSS 0x0009

#define AR_CODE32      (AR_G_4K | AR_D_32 | AR_L | AR_AVL | AR_P | AR_DPL_0 | AR_S_CODE | AR_TYPE_CODE)
#define AR_CODE32_DPL3 (AR_G_4K | AR_D_32 | AR_L | AR_AVL | AR_P | AR_DPL_3 | AR_S_CODE | AR_TYPE_CODE)
#define AR_DATA32      (AR_G_4K | AR_D_32 | AR_L | AR_AVL | AR_P | AR_DPL_0 | AR_S_DATA | AR_TYPE_DATA)
#define AR_DATA32_DPL3 (AR_G_4K | AR_D_32 | AR_L | AR_AVL | AR_P | AR_DPL_3 | AR_S_DATA | AR_TYPE_DATA)
#define RPL0 0x0
#define RPL1 0x1
#define RPL2 0x2
#define RPL3 0x3
#define TI_GDT 0x0
#define TI_LDT 0x4

#define SelectorCode32_K     ((1 << 3) | TI_GDT | RPL0) /* 代码段 */
#define SelectorData32_K     ((2 << 3) | TI_GDT | RPL0) /* 数据段 */
#define SelectorTSS32        ((3 << 3) | TI_GDT | RPL0) /* TSS段 */

#define SelectorCode32_U     ((4 << 3) | TI_GDT | RPL3) /* 用户代码段 */
#define SelectorData32_U     ((5 << 3) | TI_GDT | RPL3) /* 用户数据段 */

#define AR_DESC_32 0xe
#define AR_DESC_16 0x6

#define AR_IDT_DESC_DPL0 (AR_P | AR_DPL_0 | AR_DESC_32)
#define AR_IDT_DESC_DPL3 (AR_P | AR_DPL_3 | AR_DESC_32)

#define KERNEL_PAGE_DIR_TABLE_POS 0x00400000

#define PG_SIZE 4096
#define PCB_SIZE (PG_SIZE * 1)

#define PG_P 0x1
#define PG_RW_R 0x0
#define PG_RW_W 0x2
#define PG_US_S 0x0
#define PG_US_U 0x4

/* TSS描述符属性 */
#define TSS_D_0 0
#define AR_TSS32 (AR_G_4K | TSS_D_0 | AR_L | AR_AVL | AR_P | AR_DPL_0 | AR_S_SYS | AR_TYPE_TSS)

#define EFLAGS_MBS (1 << 1)
#define EFLAGS_IF_1 (1 << 9)
#define EFLAGS_IF_0 (0 << 9)
#define EFLAGS_IOPL_0 (0 << 12)
#define EFLAGS_IOPL_3 (3 << 12)

#define LoaderBaseAddress 0x1000  /* loader加载到0x1000地址处 */
#define LoaderOffsetAddress 0x500 /* loader前0x4ff字节是数据,代码正式开始是0x500字节 */

#define GDT_PTR ((struct SEGMDESC*)(0xc0000000 + LoaderBaseAddress))
/*
* loader向内核传递的参数的地址
*/
#define ARDS_BUF   (*((uint32_t*)(0xc0007c00 + 0x000)))
#define ARDS_NR    (*((uint32_t*)(0xc0007c00 + 0x004)))

#define TotalMem_l (*((uint32_t*)(0xc0007c00 + 0x008)))
#define TotalMem_h (*((uint32_t*)(0xc0007c00 + 0x00c)))

#define DiskCnt    (*((uint32_t*)(0xc0007c00 + 0x010)))
/* 显示相关 */
#define DisplayMode (*((uint32_t*)(0xc0007c00 + 0x014)))
#define VideoMode   (*((uint32_t*)(0xc0007c00 + 0x018)))
#define Vram_l      (*((uint32_t*)(0xc0007c00 + 0x01c)))
#define Vram_h      (*((uint32_t*)(0xc0007c00 + 0x020)))
#define ScrnX       (*((uint32_t*)(0xc0007c00 + 0x024)))
#define ScrnY       (*((uint32_t*)(0xc0007c00 + 0x028)))
/* 其他 */
#define NEXT_PID    (*((uint32_t*)(0xc0007c00 + 0x02c)))
/* 参数的取值 */
enum Display
{
    _TEXT = 0,
    _GRAPHIC = 1, /* 图形界面 */
};

/* C语言实现bool */
#ifndef __cplusplus
    typedef uint32_t bool;
    #define true 1
    #define false 0
#endif

#ifndef NULL
    #define NULL ((void*)0)
#endif

typedef uint32_t pid_t;

/* 其余的宏定义 */
/* __asm__ 和 __volatile__ 一般gcc会定义 */
#ifndef __asm__
    #define __asm__ asm
#endif

#ifndef __volatile__
    #define __volatile__ volatile
#endif

#ifndef nop
    #define nop() __asm__ __volatile__ ("nop;");
#endif
 /* 向上取整 */
#define DIV_ROUND_UP(X ,STEP) (((X) + ((STEP) - 1)) / (STEP))

#ifndef PUBLIC
    #define PUBLIC
#endif
#ifndef PRIVATE
    #define PRIVATE static
#endif

/* kernel.lds中的数据 */
extern char _kernel_start;
extern char _text;
extern char _etext;
extern char _data;
extern char _edata;
extern char _rodata;
extern char _erodata;
extern char _bss;
extern char _ebss;
extern char _kernel_end;

#endif /* __GLOBAL_H__ */
