#include "syscall.h"

#include "print.h"
#include "stdint.h"
#include "thread.h"

syscall syscall_table[3]; /* Send,Receive,Both */

uint32_t syscall_test()
{
    put_str(0x70,"syscall! PID:");
    put_int(0x70,running_thread()->pid,10);
    put_char(0x70,'\n');
    return 0;
}

void init_syscall()
{
    syscall_table[NO_SYSCALL] = syscall_test;
    return;
}