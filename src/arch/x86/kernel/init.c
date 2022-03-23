#include "init.h"
#include "graphic.h"
#include "interrupt.h"
#include "memory.h"
#include "print.h"
#include "thread.h"
#include "timer.h"

void init_all()
{
    put_str1(0x02,"[inin]:all\n");
    put_str1(0x02,"[init]:    idt\n");
    init_idt();
    put_str1(0x02,"[init]:    idt init down.\n");
    put_str1(0x02,"[init]:    init pid\n");
    init_pit();
    put_str1(0x02,"[init]:    pid init down.\n");
    put_str1(0x02,"[init]:    init memory.\n");
    init_memory();
    put_str1(0x02,"[init]:    memory init down.\n");
    put_str1(0x02,"[init]:    init thread\n");
    init_thread();
    put_str1(0x02,"[init]:    thread init down.\n");
    put_str1(0x02,"[init]:    init screen.\n");
    init_screen(&Screen);
    put_str1(0x02,"[init]:    screen init down.\n");
    put_str1(0x02,"[init]:init down.\n");
    return;
}