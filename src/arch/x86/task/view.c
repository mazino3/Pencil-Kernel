#include "task.h"

#include "apilib.h"
#include "debug.h"
#include "global.h"
#include "graphic.h"
#include "interrupt.h"
#include "list.h"
#include "memory.h"
#include "message.h"
#include "process.h"
#include "stdio.h"
#include "string.h"
#include "syscall.h"
#include "thread.h"

PRIVATE void VIEWctl_init(struct viewctl* ctl,pixel_t* vram,int xsize,int ysize,int views);
PRIVATE struct viewblock* VIEWblock_init(int xsize,int ysize,pixel_t* buf,pid_t holder);
PRIVATE void VIEW_free(struct viewblock* view);
PRIVATE void VIEWInsert(struct viewctl* ctl,struct viewblock* view);
PRIVATE void VIEWRemove(struct viewblock* view);
PRIVATE void VIEWUpdown(struct viewblock* view,int height);
PRIVATE void VIEWSlide(struct viewblock* view,int x,int y);
PRIVATE void VIEW_reflush(struct viewblock* view,int x0,int y0,int x1,int y1);
PRIVATE void VIEW_reflushsub(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0,int h1);
PRIVATE void VIEW_reflushmap(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0);

struct viewctl* pctl;

void VIEW_task(void* arg)
{
    intr_disable();
    struct MESSAGE msg;
    struct msg1 msg1;
    struct msg2 msg2;
    struct msg3 msg3;
    pid_t source;
    struct viewctl ctl;
    struct viewblock* background;
    char str[65];

    // struct viewblock* addr;
    // addr = kmalloc(sizeof(struct viewblock));
    // sprintf(str,"addr: %p,size: %d",addr,sizeof(struct viewblock));
    // vput_str(0xe0000000,ScrnX,20,26,rgb(255,255,255),str);

    // addr->flage = 100;
    pctl = &ctl;
    VIEWctl_init(&ctl,(pixel_t*)0xe0000000,ScrnX,ScrnY,1024);
    void* back = kmalloc(sizeof(pixel_t) * ScrnX * ScrnY);
    background = VIEWblock_init(ScrnX,ScrnY,back,running_thread()->pid);
    viewFill(background->buf,background->xsize,rgb(0,132,132),0,0,background->xsize - 1,background->ysize - 1);
    // viewFill(background->buf,background->xsize,rgb(140,20,210),0,0,background->xsize - 1,background->ysize - 1);

    vput_str(background->buf,ScrnX,20,10,rgb(255,255,255),PKn_Version);
    sprintf(str,"Video Mode: 0x%x Scrnx = %d Scrny = %d Memory: %dMB", VideoMode, ScrnX, ScrnY,TotalMem_l / 1024 /1024);
    vput_str(background->buf,ScrnX,20,26,rgb(255,255,255),str);

    cpu_info(str);
    vput_str(background->buf,ScrnX,20,42,rgb(255,255,255),str);

    VIEWInsert(&ctl,background);
    VIEWSlide(background,0,0);
    struct viewblock* view;
    while(1)
    {
        resetmsg(&msg);
        source = NO_TASK;
        send_recv(RECEIVE,ANY,&msg);
        source = msg.source;
        if(background->x != 0 || background->y != 0)
        {
            VIEWSlide(background,0,0);
        }
        switch(msg.type)
        {
            case VIEW_VIEWINIT:
                msg3 = msg.msg3;
                view = VIEWblock_init(msg3.m3i1,msg3.m3i2,msg3.m3p1,source);
                view->holder = source;
                VIEWInsert(&ctl,view);
                msg.msg2.m2p1 = view;
                view = NULL;
                send_recv(SEND,source,&msg);
                break;

            case VIEW_FREE:
                msg2 = msg.msg2;
                VIEW_free(msg2.m2p1);
            case VIEW_FLUSH:
                msg3 = msg.msg3;
                VIEW_reflush(msg3.m3p1,msg3.m3i1,msg3.m3i2,msg3.m3i3,msg3.m3i4);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_SLIDE:
                msg3 = msg.msg3;
                VIEWSlide(msg3.m3p1,msg3.m3i1,msg3.m3i2);
                send_recv(SEND,source,&msg);
                break;
            
            case VIEW_UPDOWN:
                msg3 = msg.msg3;
                VIEWUpdown(msg3.m3p1,msg3.m3i1);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_GETXYVIEW:
                msg1 = msg.msg1;
                msg.msg2.m2p1 = ctl.map[msg1.m1i2 * (ctl.xsize) + msg1.m1i1];
                send_recv(SEND,source,&msg);
                break;
            default:
                    break;
        }
    }
}

PRIVATE void VIEWctl_init(struct viewctl* ctl,pixel_t* vram,int xsize,int ysize,int views)
{
    ctl->view0 = (struct viewblock**)kmalloc(sizeof(struct viewblock*) * views);
    ctl->views = views;
    ctl->top = 0;
    ctl->vram = vram;
    ctl->xsize = xsize;
    ctl->ysize = ysize;
    ctl->map = (ptr_t*)kmalloc((sizeof(pixel_t) * xsize * ysize));
    return;
}

PRIVATE struct viewblock* VIEWblock_init(int xsize,int ysize,pixel_t* buf,pid_t holder)
{
    struct viewblock* view = kmalloc(sizeof(struct viewblock));
    if(view == NULL)
    {
        return NULL;
    }
    view->buf = buf;
    if(view->buf == NULL)
    {
        kfree(view);
        return NULL;
    }
    view->ctl = NULL;
    view->height = 0;
    view->x = 0;
    view->y = 0;

    view->xsize = xsize;
    view->ysize = ysize;

    view->holder = holder;
    return view;
}

PRIVATE void VIEW_free(struct viewblock* view)
{
    if(view->ctl != NULL)
    {
        VIEWRemove(view);
    }
    kfree(view);
    return;
}

PRIVATE void VIEWInsert(struct viewctl* ctl,struct viewblock* view)
{
    // ASSERT(ctl->top <= ctl->views - 1);
    // ASSERT(ctl == pctl);
    if(ctl->top <= ctl->views - 1)
    {
        view->ctl = ctl;
        ctl->view0[ctl->top] = view;
        view->height = ctl->top;
        ctl->top++;
    }
    return;
}

PRIVATE void VIEWRemove(struct viewblock* view)
{
    int i;
    for(i = view->height;i < (view->ctl->top - 1);i++)
    {
        view->ctl->view0[i] = view->ctl->view0[i - 1];
        view->ctl->view0[i]->height = i;
    }
    view->ctl->top--;
    VIEW_reflushmap(view->ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,0);
    VIEW_reflushsub(view->ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,0,view->height);
    view->height = 0;
    view->ctl = NULL;
    return;
}

PRIVATE void VIEWUpdown(struct viewblock* view,int height)
{
    struct viewctl* ctl = view->ctl;
    if(ctl == NULL)
    {
        return;
    }
    ASSERT(ctl == pctl);
    int i;
    int old_height = view->height;
    /* 修正高度 */
    if(height > (ctl->top - 1))
    {
        height = ctl->top - 1;
    }
    if(height < 0)
    {
        height = 0;
    }
    view->height = height;
    /* 开始排序 */
    /* 图层下降 */
    if(old_height > height)
    {
        for(i = old_height;i > height;i--)
        {
            ctl->view0[i] = ctl->view0[i - 1];
            ctl->view0[i]->height = i;
        }
        ctl->view0[i] = view;
        /* 刷新 */
        VIEW_reflushmap(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height + 1);
        VIEW_reflushsub(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height + 1,old_height);

    }
    /* 图层升高 */
    else if(old_height < height)
    {
        for(i = old_height;i < height;i++)
        {
            ctl->view0[i] = ctl->view0[i + 1];
            ctl->view0[i]->height = i;
        }
        ctl->view0[i] = view;
        /* 刷新 */
        VIEW_reflushmap(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height);
        VIEW_reflushsub(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height,view->height);
    }
    return;
}

PRIVATE void VIEWSlide(struct viewblock* view,int x,int y)
{
    int x0 = view->x;
    int y0 = view->y;
    view->x = x;
    view->y = y;
    ASSERT(view->ctl != NULL);
    if(view->ctl == NULL)
    {
        return;
    }
    ASSERT(view->ctl == pctl);
    VIEW_reflushmap(view->ctl,x0,y0,x0 + (view->xsize),y0 + (view->ysize),0);
    VIEW_reflushmap(view->ctl,view->x,view->y,view->x + (view->xsize),view->y + (view->ysize),view->height);
    VIEW_reflushsub(view->ctl,x0,y0,x0 + (view->xsize),y0 + (view->ysize),0,view->height - 1);
    VIEW_reflushsub(view->ctl,view->x,view->y,view->x + (view->xsize),view->y + (view->ysize),view->height,view->height);
    return;
}

PRIVATE void VIEW_reflush(struct viewblock* view,int x0,int y0,int x1,int y1)
{
    ASSERT(view->ctl == pctl);
    VIEW_reflushsub(view->ctl,view->x + x0,view->y + y0,view->x + x1,view->y + y1,view->height,view->height);
    return;
}

PRIVATE void VIEW_reflushsub(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0,int h1)
{
    int bx;
    int by;
    int bx0;
    int by0;
    int bx1;
    int by1;
    int x;
    int y;
    int h;
    struct viewblock* view;
    ASSERT(ctl == pctl);
    if(x0 < 0){ x0 = 0; }
    if(y0 < 0){ y0 = 0; }
    if(x1 > (ctl->xsize)){ x1 = ctl->xsize; }
    if(y1 > (ctl->ysize)){ y1 = ctl->ysize; }
    for(h = h0;h <= h1;h++)
    {
        view = ctl->view0[h];
        bx0 = x0 - view->x;
        by0 = y0 - view->y;
        bx1 = x1 - view->x;
        by1 = y1 - view->y;
        if(bx0 < 0){ bx0 = 0; }
        if(by0 < 0){ by0 = 0; }
        if(bx1 > (view->xsize)){ bx1 = view->xsize; }
        if(by1 > (view->ysize)){ by1 = view->ysize; }
        page_dir_activate(pid2thread(view->holder));
        for(by = by0;by < by1;by++)
        {
            y = (view->y) + by;
            for(bx = bx0;bx < bx1;bx++)
            {
                x = (view->x) + bx;
                /* 根据map刷新 */
                if(ctl->map[y * (ctl->xsize) + x] == (ptr_t)view)
                {
                    ctl->vram[y * (ctl->xsize) + x] = view->buf[by * (view->xsize) + bx];
                }
            }
        }
        page_dir_activate(running_thread());
    }
    return;
}

PRIVATE void VIEW_reflushmap(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0)
{
    int bx;
    int by;
    int bx0;
    int by0;
    int bx1;
    int by1;
    int x;
    int y;
    int h;
    struct viewblock* view;
    ASSERT(ctl == pctl);
    if(x0 < 0){ x0 = 0; }
    if(y0 < 0){ y0 = 0; }
    if(x1 > (ctl->xsize)){ x1 = ctl->xsize; }
    if(y1 > (ctl->ysize)){ y1 = ctl->ysize; }

    for(h = h0;h < (ctl->top);h++)
    {
        view = ctl->view0[h];
        bx0 = x0 - view->x;
        by0 = y0 - view->y;
        bx1 = x1 - view->x;
        by1 = y1 - view->y;
        if(bx0 < 0){ bx0 = 0; }
        if(by0 < 0){ by0 = 0; }
        if(bx1 > (view->xsize)){ bx1 = view->xsize; }
        if(by1 > (view->ysize)){ by1 = view->ysize; }
        page_dir_activate(pid2thread(view->holder));
        for(by = by0;by < by1;by++)
        {
            y = (view->y) + by;
            for(bx = bx0;bx < bx1;bx++)
            {
                x = (view->x) + bx;
                if((view->buf[by * (view->xsize) + bx] & 0xff000000) != 0xff000000)
                {
                    ctl->map[y * (ctl->xsize) + x] = (ptr_t)view;
                }
            }
        }
        page_dir_activate(running_thread());
    }
    return;
}