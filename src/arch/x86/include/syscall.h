#ifndef __SYSCALL_H__
#define __SYSCALL_H__

#include "stdint.h"

#define SYSCALL_INTR 0x4d
typedef void* syscall;

#define SEND    1
#define RECEIVE 2
#define BOTH    3

enum MM_MEGTYPE
{
    /* 申请一块内存 */
    MM_MALLOC = 1, /* malloc m1i1: size, return: m2p1: addr */
    /* 释放内存 */
    MM_FREE,       /* free   m2p1: addr */
    // /* 将src_pid进程src地址处的size字节复制到dst_pid进程的dst地址 */
    // MM_MEMCPY,     /* 跨进程复制        m3p1: dst,m3p2: src,m3i1: dst_pid(src_pid: msg.source),m3i2: size */
    // /* 接收src_pid进程复制过来的数据 */
    // MM_CPYRECV,    /* 接收对方复制的内容 m3p1: dst,m3i1: src_pid */
};

enum TASKMGR_MSGTYPE
{
    TASKMGR_GETPID = 1, /* return: m1i1: pid */
    TASKMGR_YIELD,
    TASKMGR_SLEEP,
};

enum VIEW_MSGTYPE
{
    VIEW_CREAT = 1, /* 创建     m1i1: xsize, m1i2: ysize; return: m2p1: 句柄*/
    VIEW_FREE,      /* 释放     m2p1: 句柄 */
    VIEW_INSERT,    /* 插入     m2p1: 句柄 */
    VIEW_REMOVE,    /* 移除     m2p1: 句柄 */
    VIEW_UPDOWN,    /* 高度调整 m3i1: height, m3pi: 句柄 */
    VIEW_SLIED,     /* 移动     m3p1: 句柄,m3i1 = x,m3i2 = y */
    VIEW_FILL,      /* 填充     m3i1: x0, m3i2: y0, m3i3: x1, m3i4: y1, m3l1: color, m3p1: 句柄 */
    VIEW_REFLUSH,   /* 刷新     m3i1: x0, m3i2: y0, m3i3: x1, m3i4: y1, m3p1: 句柄 */
};

extern void syscall_entry(void);
void init_syscall();

#endif /* __SYSCALL_H__ */