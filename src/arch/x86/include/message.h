#ifndef __MESSAGE_H__
#define __MESSAGE_H__

#include "stdint.h"

struct msg1
{
    uint32_t m1i1;
    uint32_t m1i2;
    uint32_t m1i3;
    uint32_t m1i4;
};

struct msg2
{
    void* m2p1;
    void* m2p2;
    void* m2p3;
    void* m2p4;
};

struct msg3
{
    uint32_t m3i1;
    uint32_t m3i2;
    uint32_t m3i3;
    uint32_t m3i4;
    uint64_t m3l1;
    uint64_t m3l2;
    void* m3p1;
    void* m3p2;
};

struct MESSAGE
{
    pid_t source;   /* 发出这个消息的进程pid */
    uint32_t type;  /* 消息类型 */
    union
    {
        struct msg1 msg1;
        struct msg2 msg2;
        struct msg3 msg3;
    };
};



#endif /* __MESSAGE_H__ */
