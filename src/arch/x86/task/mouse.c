#include "mouse.h"

#include "apilib.h"
#include "debug.h"
#include "fifo.h"
#include "interrupt.h"


// void Mouse_task(void* arg)
// {
//     pixel_t* buf = api_malloc(sizeof(pixel_t) * 16 * 16);
//     void* view = api_viewinit(16,16,buf);
//     static char cursor[16][16] = 
//     {
//         "*---------------",
//         "**--------------",
//         "*#*-------------",
//         "*##*------------",
//         "*###*-----------",
//         "*####*----------",
//         "*#####*---------",
//         "*######*--------",
//         "*#######*-------",
//         "*####*****------",
//         "*##*#*----------",
//         "*#*-*#*---------",
//         "**--*#*---------",
//         "*----*#*--------",
//         "-----*#*--------",
//         "------*---------",
        
//     };
//     int x,y;
//     for(y=0;y<16;y++)
//     {
//         for(x=0;x<16;x++)
//         {
//             if('#'==cursor[y][x])
//             {
//                 buf[y * 16 + x] = rgb(255,255,255);
//             }
//             if('-'==cursor[y][x])
//             {
//                 buf[y * 16 + x] = rgba(0,0,0,255);
//             }
//             if('*'==cursor[y][x])
//             {
//                 buf[y * 16 + x] = rgb(132,132,132);
//             }
//         }
//     }
//     static struct MouseData md;
//     md.phase = 0;
//     int mx = ScrnX / 2;
//     int my = ScrnY / 2;
//     api_viewslide(view,mx,my);
//     api_viewupdown(view,api_gettop());
//     int moveflage = 0;
//     // signed int mmx = 0;
//     // signed int mmy = 0;
//     int wgapx = 0;
//     int wgapy = 0;
//     struct viewblock* win;
//     uint8_t data;
//     while(1)
//     {
//         if(fifo_empty(&mouse_fifo))
//         {
//             api_viewupdown(view,api_gettop());
//             api_viewslide(view,mx,my);
//             if(moveflage)
//             {
//                 api_viewslide(win,mx - wgapx,my - wgapy);
//                 moveflage = 0;
//             }
//             // mmx = 0;
//             // mmy = 0;
//             wgapx = 0;
//             wgapy = 0;
//         }
//         else
//         {
//             fifo_get(&mouse_fifo,&data);
//             if(mouse_decode(&md,data) != 0)
//             {
//                 mx += md.x;
//                 my += md.y;
//                 x = md.x;
//                 y = md.y;
//                 if(mx < 0){ mx = 0; }
//                 if(my < 0){ my = 0; }
//                 if(mx > ScrnX - 3){ mx = ScrnX - 3; }
//                 if(my > ScrnY - 3){ my = ScrnY - 3; }
//                 // mmx += x;
//                 // mmy += y;
//                 api_viewupdown(view,api_gettop());
//                 if((md.btn & 0x01) == 1) /* 左键 */
//                 {
//                     if(moveflage == 0 && mx > 1)
//                     {
//                         win = api_getviewbypos(mx - 1,my); /* 查找窗口 */
//                         if(win->flage == 2)
//                         {
//                             moveflage = 1;
//                             api_viewupdown(win,api_gettop() - 1); /* 抬到鼠标下一层 */
//                             wgapx = mx - win->x;
//                             wgapy = my - win->y;
//                         }
//                     }
//                 }
//                 // else /* 松开左键 */
//                 // {
//                 //     api_viewslide(view,mx,my);
//                 //     if(moveflage)
//                 //     {
//                 //         api_viewslide(win,mx - wgapx,my - wgapy);
//                 //         moveflage = 0;
//                 //     }
//                 //     // mmx = 0;
//                 //     // mmy = 0;
//                 //     wgapx = 0;
//                 //     wgapy = 0;
//                 // }
//             }
//         }
//     }
// }

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
    while(1)
    {
        if(!fifo_empty(&mouse_fifo))
        {
            fifo_get(&mouse_fifo,&data);
            if(mouse_decode(&md,data) != 0)
            {
                mx += md.x;
                my += md.y;
                if(mx < 1){ mx = 1; }
                if(my < 0){ my = 0; }
                if(mx > ScrnX - 1){ mx = ScrnX - 2; }
                if(my > ScrnY - 2){ my = ScrnY - 2; }
                new_mx = mx;
                new_my = my;
                api_viewupdown(view,api_gettop());
                if((md.btn & 0x01) != 0) /* 左键 */
                {
                    if(mmx < 0)
                    {
                        win = api_getviewbypos(mx - 1,my); /* 查找窗口 */
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
                if(new_wy < 0)
                {
                    new_wy = 0;
                }
                api_viewslide(win,new_wx,new_wy);
                new_wx = 0x7fffffff;
            }
        }
    }
}