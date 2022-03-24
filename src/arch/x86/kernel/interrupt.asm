[bits 32]

; extern general_intr_handler
; extern intr0x20_handler

; section .text
;     global asm_intr0x20_handler
;     asm_intr0x20_handler:
;         push 0
;         push ds
;         push es
;         push fs
;         push gs
;         pushad
;         push 0x20
;         mov ax,ss
;         mov ds,ax
;         mov es,ax
;         call intr0x20_handler
;         add esp,4
;         popad
;         pop gs
;         pop fs
;         pop es
;         pop ds
;         add esp,4
;         iretd

section .text
    extern idt_table
section .data
global intr_entry_table
intr_entry_table:

%macro VECTOR 2
section .text
    global asm_intr%1_handler
    asm_intr%1_handler:
        %2
        push ds
        push es
        push fs
        push gs
        pushad
        push %1
        mov ax,ss
        mov ds,ax
        mov es,ax
        call [idt_table + %1 * 4]
        add esp,4
        popad
        pop gs
        pop fs
        pop es
        pop ds
        add esp,4
        iretd
section .data
    dd asm_intr%1_handler
%endmacro

VECTOR 0x00,push 0
VECTOR 0x01,push 0
VECTOR 0x02,push 0
VECTOR 0x03,push 0
VECTOR 0x04,push 0
VECTOR 0x05,push 0
VECTOR 0x06,push 0
VECTOR 0x07,push 0
VECTOR 0x08,nop
VECTOR 0x09,push 0
VECTOR 0x0a,nop
VECTOR 0x0b,nop 
VECTOR 0x0c,push 0
VECTOR 0x0d,nop
VECTOR 0x0e,nop
VECTOR 0x0f,push 0
VECTOR 0x10,push 0
VECTOR 0x11,nop
VECTOR 0x12,push 0
VECTOR 0x13,push 0 
VECTOR 0x14,push 0
VECTOR 0x15,push 0
VECTOR 0x16,push 0
VECTOR 0x17,push 0
VECTOR 0x18,nop
VECTOR 0x19,push 0
VECTOR 0x1a,nop
VECTOR 0x1b,nop
VECTOR 0x1c,push 0
VECTOR 0x1d,nop
VECTOR 0x1e,nop
VECTOR 0x1f,push 0
VECTOR 0x20,push 0    ;时钟中断对应的入口
VECTOR 0x21,push 0    ;键盘中断对应的入口
VECTOR 0x22,push 0    ;级联用的
VECTOR 0x23,push 0    ;串口2对应的入口
VECTOR 0x24,push 0    ;串口1对应的入口
VECTOR 0x25,push 0    ;并口2对应的入口
VECTOR 0x26,push 0    ;软盘对应的入口
VECTOR 0x27,push 0    ;并口1对应的入口
VECTOR 0x28,push 0    ;实时时钟对应的入口
VECTOR 0x29,push 0    ;重定向
VECTOR 0x2a,push 0    ;保留
VECTOR 0x2b,push 0    ;保留
VECTOR 0x2c,push 0    ;ps/2鼠标
VECTOR 0x2d,push 0    ;fpu浮点单元异常
VECTOR 0x2e,push 0    ;硬盘
VECTOR 0x2f,push 0    ;保留
