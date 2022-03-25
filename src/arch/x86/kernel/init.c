#include "init.h"
#include "cpu.h"
#include "graphic.h"
#include "interrupt.h"
#include "keyboard.h"
#include "memory.h"
#include "print.h"
#include "thread.h"
#include "timer.h"

void init_all()
{
    put_str(0x02,"[inin]:all\n");
    init_idt();
    init_pit();
    init_memory();
    init_keyboard();
    init_thread();
    init_screen(&Screen);
    put_str(0x02,"[init]:init down.\n");
    return;
}