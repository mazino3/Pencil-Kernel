#include "apilib.h"
#include "debug.h"
#include "graphic.h"
#include "message.h"
#include "syscall.h"
#include "task.h"
#include "thread.h"

void* api_malloc(int size)
{
    struct MESSAGE msg;
    msg.type = MM_MALLOC;
    msg.msg1.m1i1 = size;
    while(send_recv(BOTH,MM,&msg) == 1);
    return msg.msg2.m2p1;
}

void api_free(void* ptr)
{
    struct MESSAGE msg;
    msg.type = MM_FREE;
    msg.msg2.m2p1 = ptr;
    send_recv(SEND,MM,&msg);
    return;
}

void api_mmcopy(void* dst,void* src,pid_t src_pid,int size)
{
    struct MESSAGE msg;
    msg.type = MM_COPY;
    msg.msg3.m3i1 = size;
    msg.msg3.m3i2 = src_pid;
    msg.msg3.m3p1 = dst;
    msg.msg3.m3p2 = src;
    while(send_recv(BOTH,MM,&msg) == 1);
    return;
}

void* api_viewinit(int xsize,int ysize,pixel_t* buf)
{
    struct MESSAGE msg;
    msg.type = VIEW_VIEWINIT;
    msg.msg3.m3i1 = xsize;
    msg.msg3.m3i2 = ysize;
    msg.msg3.m3p1 = buf;
    while(send_recv(BOTH,VIEW,&msg) == 1);
    return msg.msg2.m2p1;
}

void api_viewremove(void* view)
{
    struct MESSAGE msg;
    msg.type = VIEW_FREE;
    msg.msg2.m2p1 = view;
    while(send_recv(SEND,VIEW,&msg) == 1);
    return;
}

void api_viewflush(void* view,int x0,int y0,int x1,int y1)
{
    struct MESSAGE msg;
    msg.type = VIEW_FLUSH;
    msg.msg3.m3i1 = x0;
    msg.msg3.m3i2 = y0;
    msg.msg3.m3i3 = x1;
    msg.msg3.m3i4 = y1;
    msg.msg3.m3p1 = view;
    while(send_recv(BOTH,VIEW,&msg) == 1);
    return;
}

void api_viewslide(void* view,int x,int y)
{
    struct MESSAGE msg;
    resetmsg(&msg);
    msg.type = VIEW_SLIDE;
    msg.msg3.m3i1 = x;
    msg.msg3.m3i2 = y;
    msg.msg3.m3p1 = view;
    while(send_recv(BOTH,VIEW,&msg) == 1);
    return;
}

void api_viewupdown(void* view,int height)
{
    struct MESSAGE msg;
    msg.type = VIEW_UPDOWN;
    msg.msg3.m3i1 = height;
    msg.msg3.m3p1 = view;
    while(send_recv(SEND,VIEW,&msg) == 1);
    return;
}

int api_gettop(void)
{
    struct MESSAGE msg;
    msg.type = VIEW_GETTOP;
    while(send_recv(BOTH,VIEW,&msg) == 1);
    return msg.msg1.m1i1;
}

void* api_getviewbypos(int x,int y)
{
    struct MESSAGE msg;
    msg.type = VIEW_GETVIEWBYPOS;
    msg.msg1.m1i1 = x;
    msg.msg1.m1i2 = y;
    while(send_recv(BOTH,VIEW,&msg) == 1);
    return msg.msg2.m2p1;
}

int api_getviewflage(void* view)
{
    struct MESSAGE msg;
    msg.type = VIEW_GETVIEWFLAGE;
    msg.msg2.m2p1 = view;
    while(send_recv(BOTH,VIEW,&msg) == 1);
    return msg.msg1.m1i1;
}

void api_makeWindow(void* view,void* buf,int xsize,int ysize,char* title)
{
    viewFill(buf,xsize,rgb(198,198,198),0,0,xsize - 1,0);
    viewFill(buf,xsize,rgb(198,198,198),xsize - 1,0,xsize - 1,ysize - 1);
    viewFill(buf,xsize,rgb(198,198,198),0,ysize - 1,xsize - 1,ysize - 1);
    viewFill(buf,xsize,rgb(198,198,198),0,0,0,ysize - 1);

    viewFill(buf,xsize,rgb(0,0,255),1,1,xsize - 23,20 + 1);

    viewFill(buf,xsize,rgb(198,198,198),xsize - 22,1,xsize - 22,20 + 1);
    viewFill(buf,xsize,rgb(198,198,198),1,20 + 2,xsize - 2,20 + 2);
    
    viewFill(buf,xsize,rgb(255,0,0),xsize - 21,1,xsize - 2,20 + 1);
    vput_str(buf,xsize,2,2,rgb(255,255,255),title);

    struct MESSAGE msg;
    msg.type = VIEW_MAKEWINDOW;
    msg.msg2.m2p1 = view;
    while(send_recv(SEND,VIEW,&msg) == 1);
    return;
}