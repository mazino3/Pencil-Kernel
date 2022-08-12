;Pencil Kernel start.asm
%include "boot.inc"
%include "protect.inc"

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
    jmp kernel_main       ;跳转到内核主函数,接下来就是C语言的部分了.
    jmp $          ;正常情况下不会到这里,因为main函数不能返回

SelectorCode32     equ (0x0001 << 3 | TI_GDT | RPL0)
SelectorData32     equ (0x0002 << 3 | TI_GDT | RPL0)