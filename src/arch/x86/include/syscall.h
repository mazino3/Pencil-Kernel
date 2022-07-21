#ifndef __SYSCALL_H__
#define __SYSCALL_H__

#include "stdint.h"

#define SYSCALL_INTR 0x4d
typedef void* syscall;

#define SEND    1
#define RECEIVE 2
#define BOTH    3

#define MM_MALLOC   1   /* malloc m1i1: size, m2p1: addr */
#define MM_FREE     2   /* free   m2p1: addr */

extern void syscall_entry(void);
void init_syscall();

#endif /* __SYSCALL_H__ */