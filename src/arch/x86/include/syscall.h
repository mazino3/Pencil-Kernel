#ifndef __SYSCALL_H__
#define __SYSCALL_H__

#include "stdint.h"

#define SYSCALL_INTR 0x4d
typedef void* syscall;

enum SYSCALL_NR
{
    SYS_TEST = 0,
    SYS_SEND,
    SYS_RECEIVE,
    SYS_BOTH,
    SYS_GETPID = 8,
    SYS_PRINT,
    SYS_LAST,
};

extern void syscall_entry(void);
void init_syscall();

#endif /* __SYSCALL_H__ */