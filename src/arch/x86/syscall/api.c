#include "syscall.h"
#include "global.h"
#include "message.h"
#include "stdint.h"

int32_t send_recv(int function,pid_t src_dst,struct MESSAGE* msg)
{
    int32_t res;
    __asm__ __volatile__("int $0x4d":"=a"(res):"a"(function),"b"(src_dst),"c"(msg));
    return res;
}