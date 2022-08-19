#include "mouse.h"

#include "apilib.h"
#include "debug.h"
#include "fifo.h"
#include "interrupt.h"
#include "syscall.h"
#include "task.h"

void Mouse_task(void* arg)
{
    pixel_t* buf = api_malloc(sizeof(pixel_t) * 16 * 16);
    void* view = api_viewinit(16,16,buf);
    static char cursor[16][16] = 
    {
        "*---------------",
        "**--------------",
        "*#*-------------",
        "*##*------------",
        "*###*-----------",
        "*####*----------",
        "*#####*---------",
        "*######*--------",
        "*#######*-------",
        "*####*****------",
        "*##*#*----------",
        "*#*-*#*---------",
        "**--*#*---------",
        "*----*#*--------",
        "-----*#*--------",
        "------*---------",
        
    };
    int x,y;
    for(y=0;y<16;y++)
    {
        for(x=0;x<16;x++)
        {
            if('#'==cursor[y][x])
            {
                buf[y * 16 + x] = rgb(255,255,255);
            }
            if('-'==cursor[y][x])
            {
                buf[y * 16 + x] = rgba(0,0,0,255);
            }
            if('*'==cursor[y][x])
            {
                buf[y * 16 + x] = rgb(132,132,132);
            }
        }
    }
    static struct MouseData md;
    md.phase = 0;
    int mx = ScrnX / 2;
    int my = ScrnY / 2;
    api_viewslide(view,mx,my);
    api_viewupdown(view,api_gettop());
    int moveflage = 0;
    int mmx = -1;
    int mmy = 0;

    int new_mx = -1;
    int mmx2 = 0;
    int new_my = 0;
    int new_wx = 0x7fffffff;
    int new_wy = 0;
    struct viewblock* win;
    uint8_t data;
    struct MESSAGE msg;
    while(1)
    {
        if(send_recv(MSG_RECEIVED,0,NULL))
        {
            send_recv(RECEIVE,ANY,&msg);
            switch(msg.type)
            {
                case 1:
                    msg.msg1.m1i1 = mx;
                    msg.msg1.m1i2 = my;
                    send_recv(SEND,msg.source,&msg);
                    break;
                default:
                break;
            }
        }
        if(!fifo_empty(&mouse_fifo))
        {
            fifo_get(&mouse_fifo,&data);
            if(mouse_decode(&md,data) != 0)
            {
                mx += md.x;
                my += md.y;
                if(mx < 0){ mx = 0; }
                if(my < 0){ my = 0; }
                if(mx > ScrnX - 1){ mx = ScrnX - 1; }
                if(my > ScrnY - 1){ my = ScrnY - 1; }
                new_mx = mx;
                new_my = my;
                api_viewupdown(view,api_gettop());
                if((md.btn & 0x01) != 0) /* 左键 */
                {
                    if(mmx < 0)
                    {
                        int i;
                        for(i = api_gettop() - 1;i >= 0;i--)
                        {
                            win = api_height2view(i); /* 查找窗口 */
                            if(win->x <= mx && win->y <= my && win->x + win->xsize >= mx && win->y + win->ysize >= my)
                            {
                                if(win->flage == 2)
                                {
                                    api_viewupdown(win,api_gettop() - 1); /* 抬到鼠标下一层 */
                                    /* 判断x,y是否在win的标题栏区域 */
                                    if((my - win->y) >= 1 && (my - win->y) < 23)
                                    {
                                        if((mx - win->x) >= 1 && (mx - win->x) < (win->xsize - 22))
                                        {
                                            /* 开始移动窗口 */
                                            mmx = mx; /* 鼠标原位置 */
                                            mmy = my;
                                            mmx2 = win->x; /* 窗口新位置 */
                                            new_wy = win->y;
                                        }
                                        if((mx - win->x) >= (win->xsize - 22) && (mx - win->x) < (win->xsize - 1))
                                        {
                                            api_viewupdown(win,-1);
                                        }
                                    }
                                    break;
                                }
                            }
                        }
                    }
                    else
                    {
                        int x,y;
                        x = mx - mmx; /* 鼠标移动过的距离 */
                        y = my - mmy;
                        new_wx = mmx2 + x; /* 窗口移动 */
                        new_wy = new_wy + y;
                        mmy = my;
                    }
                }
                else /* 松开左键 */
                {
                    mmx = -1;
                    if(new_wx != 0x7fffffff) /* 有窗口在移动 */
                    {
                        if(new_wy < 0)
                        {
                            new_wy = 0;
                        }
                        api_viewslide(win,new_wx,new_wy); /* 移动到新位置 */
                        new_wx = 0x7fffffff;
                    }
                }
            }
        }
        else
        {
            if(new_mx >= 0)
            {
                api_viewslide(view,new_mx,new_my);
                new_mx = -1;
            }
            if(new_wx != 0x7fffffff)
            {
                api_viewslide(win,new_wx,new_wy);
                // new_wx = 0x7fffffff;
            }
        }
    }
}