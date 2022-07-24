#include "task.h"

#include "apilib.h"
#include "graphic.h"
#include "message.h"
#include "syscall.h"
#include "thread.h"

// #define rgb(R,G,B) ((uint32_t)(0x00000000 |( R << 16 | G << 8 | B << 0 )))
// #define rgba(R,G,B,A) ((uint32_t)(0x00000000 |( A << 24 | R << 16 | G << 8 | B << 0 )))

// typedef uint32_t pixel_t;

struct viewblock
{
    struct viewctl* ctl;          /* 图层对应的ctl */
    pixel_t* buf;                 /* 图层内容 */
    int height;                   /* 图层高度 */
    int x;                        /* 图层x坐标 */
    int y;                        /* 图层y坐标 */
    uint32_t xsize;               /* 图层x轴长度 */
    uint32_t ysize;               /* 图层y轴长度 */
};

struct viewctl
{
    struct viewblock** view0; /* 存放排序好的view的指针 */
    int views;                /* view个数 */
    int top;                  /* 最上面的图层编号 + 1 */
    pixel_t* vram;            /* 显存 */
    int xsize;                /* x轴像素数 */
    int ysize;                /* y轴像素数 */
    ptr_t* map;               /* 刷新图层用的map */
};

PRIVATE void viewctl_init(struct viewctl* ctl,pixel_t* vram,int xsize,int ysize,int views);
PRIVATE struct viewblock* viewblock_init(int xsize,int ysize);
PRIVATE void view_free(struct viewblock* view);
PRIVATE void viewInsert(struct viewctl* ctl,struct viewblock* view);
PRIVATE void viewRemove(struct viewblock* view);
PRIVATE void viewUpdown(struct viewblock* view,int height);
PRIVATE void viewSlide(struct viewblock* view,int x,int y);
PRIVATE void view_reflush(struct viewblock* view,int x0,int y0,int x1,int y1);
PRIVATE void view_reflushsub(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0,int h1);
PRIVATE void view_reflushmap(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0);
PRIVATE void viewFill(pixel_t* vram,int xsize,pixel_t color,int x0,int y0,int x1,int y1);

void view_task(void* arg)
{
    task_table[VIEW] = running_thread()->pid;
    struct viewctl ctl;
    viewctl_init(&ctl,(void*)0xe0000000,ScrnX,ScrnY,1024);
    // struct viewblock* mouse = viewblock_init(16,16);
    // static char cursor[16][16] = 
    // {
    //     "*---------------",
    //     "**--------------",
    //     "*#*-------------",
    //     "*##*------------",
    //     "*###*-----------",
    //     "*####*----------",
    //     "*#####*---------",
    //     "*######*--------",
    //     "*#######*-------",
    //     "*####*****------",
    //     "*##*#*----------",
    //     "*#*-*#*---------",
    //     "**--*#*---------",
    //     "*----*#*--------",
    //     "-----*#*--------",
    //     "------*---------",
        
    // };
    // int x,y;
    // for(y=0;y<16;y++)
    // {
    //     for(x=0;x<16;x++)
    //     {
    //         if('#'==cursor[y][x])
    //         {
    //             mouse->buf[y * 16 + x] = rgb(255,255,255);
    //         }
    //         if('-'==cursor[y][x])
    //         {
    //             mouse->buf[y * 16 + x] = rgba(0,0,0,255);
    //         }
    //         if('*'==cursor[y][x])
    //         {
    //             mouse->buf[y * 16 + x] = rgb(132,132,132);
    //         }
    //     }
    // }

    // struct MouseData md;
    // viewInsert(&ctl,mouse);
    // viewUpdown(mouse,ctl.top - 1);
    // int mx = ScrnX / 2;
    // int my = ScrnY / 2;
    // viewSlide(mouse,mx,my);
    struct MESSAGE msg;
    struct msg1 msg1;
    struct msg2 msg2;
    struct msg3 msg3;
    pid_t source;
    while(1)
    {
        resetmsg(&msg);
        source = NO_TASK;
        send_recv(RECEIVE,ANY,&msg);
        source = msg.source;
        switch(msg.type)
        {
            case VIEW_CREAT:
                msg1 = msg.msg1;
                msg.msg2.m2p1 = viewblock_init(msg1.m1i1,msg1.m1i2);
                viewFill(((struct viewblock*)msg.msg2.m2p1)->buf,((struct viewblock*)msg.msg2.m2p1)->xsize,0x00ffffff,0,0,msg1.m1i1,msg1.m1i2);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_FREE:
                msg2 = msg.msg2;
                view_free(msg2.m2p1);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_INSERT:
                msg2 = msg.msg2;
                viewInsert(&ctl,msg2.m2p1);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_REMOVE:
                msg2 = msg.msg2;
                viewRemove(msg2.m2p1);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_UPDOWN:
                msg3 = msg.msg3;
                viewUpdown(msg3.m3p1,msg3.m3i1);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_SLIED:
                msg3 = msg.msg3;
                viewSlide(msg3.m3p1,msg3.m3i1,msg3.m3i2);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_FILL:
                msg3 = msg.msg3;
                viewFill(((struct viewblock*)(msg3.m3p1))->buf,((struct viewblock*)(msg3.m3p1))->xsize,msg3.m3l1,msg3.m3i1,msg3.m3i2,msg3.m3i3,msg3.m3i4);
                send_recv(SEND,source,&msg);
                break;

            case VIEW_REFLUSH:
                msg3 = msg.msg3;
                view_reflush(((struct viewblock*)(msg3.m3p1)),msg3.m3i1,msg3.m3i2,msg3.m3i3,msg3.m3i4);
                send_recv(SEND,source,&msg);
                break;

            default:

                break;
        }
        // viewUpdown(mouse,ctl.top - 1);
        // md = get_mouse();
        // if(md.phase != 0)
        // {
        //     mx += md.x;
        //     my += md.y;
        //     if(mx < 0){ mx = 0; }
        //     if(my < 0){ my = 0; }
        //     if(mx > ctl.xsize - 3){ mx = ctl.xsize - 3; }
        //     if(my > ctl.ysize - 3){ my = ctl.ysize - 3; }
        //     viewSlide(mouse,mx,my);
        // }
    }
}

PRIVATE void viewctl_init(struct viewctl* ctl,pixel_t* vram,int xsize,int ysize,int views)
{
    ctl->view0 = sys_malloc(sizeof(struct viewblock*) * views);
    ctl->views = views;
    ctl->top = 0;
    ctl->vram = vram;
    ctl->xsize = xsize;
    ctl->ysize = ysize;
    ctl->map = (ptr_t*)sys_malloc((sizeof(pixel_t) * xsize * ysize));
    return;
}

PRIVATE struct viewblock* viewblock_init(int xsize,int ysize)
{
    struct viewblock* view = sys_malloc(sizeof(struct viewblock));
    if(view == NULL)
    {
        return NULL;
    }
    view->buf = sys_malloc(sizeof(pixel_t) * xsize * ysize);
    if(view->buf == NULL)
    {
        free(view);
        return NULL;
    }
    view->ctl = NULL;
    view->height = 0;
    view->x = 0;
    view->y = 0;

    view->xsize = xsize;
    view->ysize = ysize;
    return view;
}

PRIVATE void view_free(struct viewblock* view)
{
    if(view->ctl != NULL)
    {
        viewRemove(view);
    }
    free(view->buf);
    free(view);
    return;
}

PRIVATE void viewInsert(struct viewctl* ctl,struct viewblock* view)
{
    if(ctl->top <= ctl->views - 1)
    {
        view->ctl = ctl;
        ctl->view0[ctl->top] = view;
        view->height = ctl->top;
        ctl->top++;
    }
    return;
}

PRIVATE void viewRemove(struct viewblock* view)
{
    int i;
    for(i = view->height;i < (view->ctl->top - 1);i++)
    {
        view->ctl->view0[i] = view->ctl->view0[i - 1];
        view->ctl->view0[i]->height = i;
    }
    view->ctl->top--;
    view_reflushmap(view->ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,0);
    view_reflushsub(view->ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,0,view->height);
    view->height = 0;
    view->ctl = NULL;
    return;
}

PRIVATE void viewUpdown(struct viewblock* view,int height)
{
    struct viewctl* ctl = view->ctl;
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
        view_reflushmap(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height + 1);
        view_reflushsub(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height + 1,old_height);

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
        view_reflushmap(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height);
        view_reflushsub(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height,view->height);
    }
    return;
}

PRIVATE void viewSlide(struct viewblock* view,int x,int y)
{
    int x0 = view->x;
    int y0 = view->y;
    view->x = x;
    view->y = y;
    if(view->ctl != NULL)
    {
        view_reflushmap(view->ctl,x0,y0,x0 + (view->xsize),y0 + (view->ysize),0);
        view_reflushmap(view->ctl,view->x,view->y,view->x + (view->xsize),view->y + (view->ysize),view->height);
        view_reflushsub(view->ctl,x0,y0,x0 + (view->xsize),y0 + (view->ysize),0,view->height - 1);
        view_reflushsub(view->ctl,view->x,view->y,view->x + (view->xsize),view->y + (view->ysize),view->height,view->height);
    }
    return;
}

PRIVATE void view_reflush(struct viewblock* view,int x0,int y0,int x1,int y1)
{
    view_reflushsub(view->ctl,view->x + x0,view->y + y0,view->x + x1,view->y + y1,view->height,view->height);
    return;
}

PRIVATE void view_reflushsub(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0,int h1)
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
    }
    return;
}

PRIVATE void view_reflushmap(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0)
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
    }
    return;
}

PRIVATE void viewFill(pixel_t* vram,int xsize,pixel_t color,int x0,int y0,int x1,int y1)
{
    if(DisplayMode != _GRAPHIC)
    {
        return;
    }
    int x;
    int y;
    if((color & 0xff000000) != 0xff000000)
    {
        for(y = y0;y <= y1;y++)
        {
            for(x = x0;x <= x1;x++)
            {
                *((vram) + ((y * xsize)) + x) = color;
            }
        }
    }
    return;
}
