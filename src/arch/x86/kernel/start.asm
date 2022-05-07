;Pencil Kernel start.asm
%include "boot.inc"
%include "protect.inc"
    SelectorCode32     equ (0x0001 << 3 | TI_GDT | RPL0)
    SelectorData32     equ (0x0002 << 3 | TI_GDT | RPL0)
extern kernel_main
[bits 32]
section .text
global _start
_start:
    ;初始化寄存器
    mov ax,SelectorData32
    mov ds,ax
    mov es,ax
    mov ss,ax
    mov fs,ax
    mov gs,ax
    mov esp,KernelStackTop + 0xc0000000
    ; lgdt [gdt_ptr] ;内核栈可能会覆盖loader,所以重新加载gdt.而页表在1MB地址以上,不用担心被覆盖
    jmp kernel_main       ;跳转到内核主函数,接下来就是C语言的部分了.
    jmp $          ;正常情况下不会到这里,因为main函数不能返回

; section .data align=16
    ;  %include "protect.inc"
    ; global _GDT
    ; _GDT:
    ; GDT_BASE: SEGMDESC 0,0,0
    ; SectionCode32:     SEGMDESC 0x00000000,0xfffff,AR_CODE32 ;32位代码段
    ; SectionData32:     SEGMDESC 0x00000000,0xfffff,AR_DATA32 ;32位数据段
    ; ; SectionVideo:      SEGMDESC 0xc00b8000,0x00007,AR_DATA32 ;文字显存
    ; ; SectionColorVideo: SEGMDESC 0x000a0000,0x0000e,AR_DATA32 ;彩色显存

    ; GDT_SIZE equ ($ - GDT_BASE)
    ; GDT_LIMIT equ GDT_SIZE - 1
    ; times 60 dq 0;预留60个描述符

    ; ;段选择子
    ; SelectorCode32     equ (0x0001 << 3 | TI_GDT | RPL0)
    ; SelectorData32     equ (0x0002 << 3 | TI_GDT | RPL0)
    ; ; SelectorVideo      equ (0x0003 << 3 | TI_GDT | RPL0)
    ; ; SelectorColorVideo equ (0x0004 << 3 | TI_GDT | RPL0)

    ; ;gdt指针
    ; gdt_ptr dw GDT_LIMIT
    ;         dd GDT_BASE
