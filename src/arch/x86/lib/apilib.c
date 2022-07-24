#include "apilib.h"
#include "graphic.h"
#include "message.h"
#include "syscall.h"
#include "task.h"

void* malloc(int size)
{
    struct MESSAGE msg;
    msg.type = MM_MALLOC;
    msg.msg1.m1i1 = size;
    send_recv(BOTH,MM,&msg);
    return msg.msg2.m2p1;
}

void free(void* addr)
{
    struct MESSAGE msg;
    msg.type = MM_FREE;
    msg.msg2.m2p1 = addr;
    send_recv(SEND,MM,&msg);
    return;
}

void* api_viewCreat(int xsize,int ysize)
{
    struct MESSAGE msg;
    msg.type = VIEW_CREAT;
    msg.msg1.m1i1 = xsize;
    msg.msg1.m1i2 = ysize;
    send_recv(BOTH,VIEW,&msg);
    return msg.msg2.m2p1;
}

void api_viewFill(void* view,pixel_t color,int x0,int y0,int x1,int y1)
{
    struct MESSAGE msg;
    msg.type = VIEW_FILL;
    msg.msg3.m3i1 = x0;
    msg.msg3.m3i2 = y0;
    msg.msg3.m3i3 = x1;
    msg.msg3.m3i4 = y1;
    msg.msg3.m3l1 = color;
    msg.msg3.m3p1 = view;
    send_recv(BOTH,VIEW,&msg);
    return;
}