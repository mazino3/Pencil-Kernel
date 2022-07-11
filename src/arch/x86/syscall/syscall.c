#include "syscall.h"

#include "console.h"
#include "debug.h"
#include "global.h"
#include "list.h"
#include "print.h"
#include "stdint.h"
#include "stdio.h"
#include "string.h"
#include "thread.h"

PUBLIC syscall syscall_table[SYS_LAST];

PRIVATE uint32_t syscall_test();
uint32_t syscall_getpid();
uint32_t syscall_print(const char* str);

void init_syscall()
{
    syscall_table[           0] = syscall_test;
    syscall_table[    SYS_SEND] = syscall_test;
    syscall_table[ SYS_RECEIVE] = syscall_test;
    syscall_table[    SYS_BOTH] = syscall_test;
    syscall_table[  SYS_GETPID] = syscall_getpid;
    syscall_table[   SYS_PRINT] = syscall_print;
    return;
}

uint32_t syscall_test()
{
    return 77;
}

uint32_t syscall_getpid()
{
    return running_thread()->pid;
}

uint32_t syscall_print(const char* str)
{
    return strlen(str);
}