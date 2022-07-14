#include "init.h"
#include "console.h"
#include "cpu.h"
#include "debug.h"
#include "graphic.h"
#include "interrupt.h"
#include "keyboard.h"
#include "mouse.h"
#include "memory.h"
#include "print.h"
#include "syscall.h"
#include "thread.h"
#include "timer.h"
#include "tss.h"

void init_all()
{
    log("init all");
    init_idt();
    init_tss();
    init_pit();
    init_memory();
    init_screen();
    init_keyboard();
    init_mouse();
    init_thread();
    init_console();
    init_syscall();
    log("init done");
    return;
}