#ifndef __SYSCALL_H__
#define __SYSCALL_H__

#include "stdint.h"

#define SYSCALL_INTR 0x4d
typedef void* syscall;

#define SEND    1
#define RECEIVE 2
#define BOTH    3

enum MM_MSGTYPE
{
    MM_MALLOC = 1, /* malloc m1i1: size, m2p1: addr */
    MM_FREE,       /* free   m2p1: addr */
    MM_COPY,       /* m3i1: size, m3i2: src_pid, m3p1: dst,m3p2: src */
};

enum VIEW_MSGTYPE
{
    VIEW_VIEWINIT = 1, /* 初始化view          m3i1: xsize,m3i2: ysize,m3p1: buf, return: m2p1: view */
    VIEW_FREE,         /* 释放view            m2p1: view */
    VIEW_FLUSH,        /* 刷新                m3p1: view, m3i1: x0,m3i2: y0,m3i3: x1, m3i4: y1 */
    VIEW_SLIDE,        /* 移动                m3p1: view, m3i1: x,m3i2: y */
    VIEW_UPDOWN,       /* 设置高度             m3p1: view, m3i1: height */
    VIEW_GETXYVIEW,    /* 获得再(x,y)显示的图层 m1i1: x, m1i2: y, return: m2p1: view */
};

extern void syscall_entry(void);
void init_syscall();

#endif /* __SYSCALL_H__ */