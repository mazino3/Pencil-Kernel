[bits 32]

extern general_intr_handler
extern intr0x20_handler

section .text
    global asm_intr0x20_handler
    asm_intr0x20_handler:
        push 0

        push ds
        push es
        push fs
        push gs

        pushad
        
        push 0x20

        mov ax,ss
        mov ds,ax
        mov es,ax
        call intr0x20_handler
        
        add esp,4
        
        popad
        
        pop gs
        pop fs
        pop es
        pop ds
        
        add esp,4
        
        iretd

section .data
    global intr_entry_table
    intr_entry_table:
        times 0x2f dd 0
