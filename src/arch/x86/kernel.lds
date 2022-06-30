OUTPUT_FORMAT("elf32-i386","elf32-i386","elf32-i386")
OUTPUT_ARCH(i386)
ENTRY(_start) /* _start在start.asm中 */ 
SECTIONS
{
    /* . = 0xc0100000; */
    . = 0xc0007f00;
    _kernel_start = .;
    .text :
    {
        _text = .;
        *(.text)
        _etext = .;
    }

    . = ALIGN(8);
    
    .data :
    {
        _data = .;
        *(.data)
        _edata = .;
    }
    .rodata :
    {
        _rodata = .;
        *(.rodata)
        _erodata = .;
    }
    .bss :
    {
        _bss = .;
        *(.bss)
        _ebss = .;
    }
    _kernel_end = .;
}
