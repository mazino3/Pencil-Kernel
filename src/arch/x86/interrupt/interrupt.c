#include "interrupt.h"
#include "config.h"
#include "cpu.h"
#include "global.h"
#include "io.h"
#include "keyboard.h"
#include "mouse.h"
#include "print.h"
#include "stdint.h"
#include "stdio.h"
#include "syscall.h"
#include "thread.h"
#include "timer.h"

struct gate_desc idt[IDT_DESC_CNT];
void* idt_table[IDT_DESC_CNT];
extern void* intr_entry_table[IDT_DESC_CNT];/* interrupt.asm中的中断程序入口地址表 */
char* intr_name[IDT_DESC_CNT];              /* 保存异常的名字 */

extern uint32_t syscall_handler(void);

void init_pic()
{
    io_out8(PIC_M_DATA, 0xff ); /*  */
    io_out8(PIC_S_DATA, 0xff ); /* 11111111 禁止所有中断 */

    io_out8(PIC_M_CTRL, 0x11 ); /* 边沿触发模式 */
    io_out8(PIC_M_DATA, 0x20 ); /* IRQ0-7由INT20-27接收 */
    io_out8(PIC_M_DATA, 0x04 ); /* PIC1由IRQ2连接*/
    io_out8(PIC_M_DATA, 0x01 ); /* 无缓冲区模式 */

    io_out8(PIC_S_CTRL, 0x11 ); /* 与上方类似 */
    io_out8(PIC_S_DATA, 0x28 ); /* IRQ8-15 INT28-2f */
    io_out8(PIC_S_DATA, 0x02 ); /* PIC1 IRQ2 */
    io_out8(PIC_S_DATA, 0x01 ); /* 无缓冲区模式 */

    io_out8(PIC_M_DATA, 0xf8 ); /* 11111000 只打开时间和键盘中断 */
    io_out8(PIC_S_DATA, 0xef ); /* 11101111 只打开鼠标中断 */

    return;
}

static void intr0x27_handler()
{
    io_out8(PIC_M_CTRL,0x20);
    return;
}

/* idt_desc_init
* 功能:初始化中断描述符表
*/
void idt_desc_init(void)
{
    int i;
    for(i = 0;i < IDT_DESC_CNT;i++)
    {
        idt_table[i] = general_intr_handler;
    }
    idt_table[0x20] = intr0x20_handler;
    idt_table[0x21] = intr0x21_handler;
    idt_table[0x27] = intr0x27_handler;
    idt_table[0x2c] = intr0x2c_handler;
    for(i = 0;i < IDT_DESC_CNT;i++)
    {
        set_gatedesc(&idt[i],intr_entry_table[i],SelectorCode32_K,AR_IDT_DESC_DPL0);
    }
    set_gatedesc(&idt[SYSCALL_INTR],syscall_entry,SelectorCode32_K,AR_IDT_DESC_DPL3);
    return;
}

/* set_gatedesc
* 功能:创建中断描述符
* gd       :中断描述符指针
* func     :对应的中断处理函数指针
* selector :目标代码段选择子
* ar       :属性
*/
void set_gatedesc(struct gate_desc* gd,void* func,int selector,int ar)
{
    gd->offset_low = ((uint32_t)func) & 0x0000ffff;
    gd->selector = selector;
    gd->dcount = ((ar >> 8) & 0xff);
    gd->attribute = (ar & 0xff);
    gd->offset_high = ((((uint32_t)func) >> 16) & 0xffff);
    return;
}


/* init_idt
* 功能:初始化idt
*/
void init_idt()
{
    idt_desc_init();
    init_pic();
    uint64_t idt_ptr = (((uint64_t)0 + ((uint64_t)((uint32_t)idt))) << 16) | (sizeof(idt) - 1);
    exception_init();
    __asm__ __volatile__ ("lidt %0"::"m"(idt_ptr):);
    return;
}

// check to make sure any new hardware or software is properly installed.
// if this is a new installation, ask your hardware or software manufacture .
// if problems continue,disable or remove any newly installed hardware or software.
// Disable BIOS memory options such as caching or shadowing.
// if you need to use safe mode to remove or disable compoents,restart your computer ,press F8 to select Advanced startup options,
// and then select afe mode. technical information:


/* general_intr_handler
* 功能:通用的中断处理函数
* vector_nr :中断号,由interrupt.asm中的对应函数压入栈中
*/
void general_intr_handler(uint8_t vector_nr,uint32_t edi,uint32_t esi,uint32_t ebp,uint32_t esp,uint32_t ebx,uint32_t edx,uint32_t ecx,uint32_t eax,uint32_t gs,uint32_t fs,uint32_t es,uint32_t ds,uint32_t errorcode,uint32_t eip,uint32_t cs)
{
    char str[255];
    intr_disable();
    set_cursor(0);
    viewFill((void*)0xe0000000,ScrnX,rgb(0,0,255),0,0,ScrnX - 1,ScrnY - 1);
    // vput_str((void*)0xe0000000,ScrnX,10,10,rgb(255,255,255),
    // "Sorry, a problem been detected and PKn shut down to prevent damage to your computer.\n"
    // "If this is the first time you've seen this stop error sereen, restart your computer.\n"
    // "If this screen appers again,follow these steps:\n"
    // " 1. Rebuild Pencil-Kernel. \n 2. Debug Pencil-Kernel on virtual machine.\n"
    // );
    vput_zh((void*)0xe0000000,ScrnX,10,10,rgb(255,255,255),
    "出现了一个错误导致系统无法正常运行,系统已关闭以保护计算机.\n"
    "如果这是您第一次看到此错误停止信息,请重新启动计算机\n"
    "如果该屏幕再次弹出,请按照以下步骤操作:\n"
    "   如果没有显示进程信息,请检查系统是否安装完整,硬件和核心数据结构是否正常初始化,\n"
    " 以及是否存在堆栈溢出.\n"
    "   如果出现页缺失异常(intr: 0x0e),请检查内存是否出现故障,以及程序是否越界访问.\n"
    " 如果问题仍未恢复,请检查硬件以及软件是否存在错误."
    );
    sprintf(str," %s\n intr: 0x%02x\n 错误地址 CS:EIP  0x%02x:%08p 错误进程名: %s",PKn_Version,vector_nr,cs,eip,running_thread()->name);
    // put_str(0x17,str);
    vput_zh((void*)0xe0000000,ScrnX,10,128,rgb(255,255,255),str);
    if(vector_nr >= 0 && vector_nr < 20)
    {
        put_str(0x14,intr_name[vector_nr]);
        vput_zh((void*)0xe0000000,ScrnX,18,176,rgb(255,0,255),intr_name[vector_nr]);
    }
    void* page_fault_vaddr = NULL;
    if(vector_nr== 14)
    {
        __asm__ __volatile__
        (
            "movl %%cr2,%[page_fault_vaddr];"
            :[page_fault_vaddr]"=r"(page_fault_vaddr)
            :
            :
        );
        sprintf(str,"( 缺失地址: %p )",page_fault_vaddr);
        // put_str(0x17,str);
        vput_zh((void*)0xe0000000,ScrnX,10,192,rgb(255,255,255),str);

    }
    /* 图形界面的handler */

    while(1)
    {
        ;
    }
    return;
}

/* exception_init
* 功能:为中断注册处理函数
*/
void exception_init()
{
    intr_name[ 0] = "#DE Divide Error";
    intr_name[ 1] = "#DB Debug Exception";
    intr_name[ 2] = "NMI Interrupt";
    intr_name[ 3] = "#BP Breakpoint Exception";
    intr_name[ 4] = "#OF Overflow Exception";
    intr_name[ 5] = "#BR BOUND Range Exceeded Exception";
    intr_name[ 6] = "#UD Invalid Opcode Exception";
    intr_name[ 7] = "#NM Device Not Available Exception";
    intr_name[ 8] = "#DF Double Fault Exception";
    intr_name[ 9] = "Coprocessor Segment Overrun";
    intr_name[10] = "#TS Invalid TSS Exception";
    intr_name[11] = "#NP Segment Not Present";
    intr_name[12] = "#SS Stack Fault Exception";
    intr_name[13] = "#GP General Protection Exception";
    intr_name[14] = "#PF Page-Fault Exception";
    intr_name[15] = "Reserved";
    intr_name[16] = "#MF x87 FPU Floating-Point Error";
    intr_name[17] = "#AC Alignment Check Exception";
    intr_name[18] = "#MC Machine-Check Exception";
    intr_name[19] = "#XF SIMD Floating-Point Exception";
    return;
}

/* intr_enable
* 功能:开中断,并返回开中断前的状态
*/
enum intr_status intr_enable()
{
    enum intr_status old_status;
    if (intr_get_status() == INTR_ON)
    {
        old_status = INTR_ON;
        return old_status;
    }
    else
    {
        old_status = INTR_OFF;
        io_sti();
        return old_status;
    }
}

/* intr_disable
* 功能:关中断,并返回关中断前的状态
*/
enum intr_status intr_disable()
{
    enum intr_status old_status;
    if (intr_get_status() == INTR_ON)
    {
        old_status = INTR_ON;
        io_cli();
        return old_status;
    }
    else
    {
        old_status = INTR_OFF;
        return old_status;
    }
}

/* intr_set_status
* 功能:将中断状态设为status,并返回关中断前的状态
*/
enum intr_status intr_set_status(enum intr_status status)
{
    return (status == INTR_ON ? intr_enable() : intr_disable());
}

/* intr_get_status
* 功能:获取当前中断状态
*/
enum intr_status intr_get_status()
{
    /* 判断flage寄存器的if位 */
    return ((get_flages() & 0x00000200) ? INTR_ON : INTR_OFF);
}
