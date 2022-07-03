#ifndef __SYSCALL_H__
#define __SYSCALL_H__

#define SYSCALL_INTR 0x4d
typedef void* syscall;

enum SYSCALL_NR
{
    NO_SYSCALL = 0,
    SYS_SEND,
    SYS_RECEIVE,
    SYS_BOTH,
};

extern syscall_entry(void); /* 其实syscall_entry有参数,但是这样写不影响 */
void init_syscall();

#endif /* __SYSCALL_H__ */