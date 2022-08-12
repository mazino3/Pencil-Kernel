#include "apilib.h"
#include "console.h"
#include "cpu.h"
#include "debug.h"
#include "fifo.h"
#include "global.h"
#include "graphic.h"
#include "init.h"
#include "interrupt.h"
#include "io.h"
#include "keyboard.h"
#include "logo.h"
#include "memory.h"
#include "message.h"
#include "mouse.h"
#include "print.h"
#include "process.h"
#include "stdio.h"
#include "string.h"
#include "syscall.h"
#include "task.h"
#include "thread.h"
#include "time.h"
#include "tss.h"

void kernel_main(void)
{
    int i;
    //char str[64];
    set_cursor(0);
    for(i = 0;i < 35;i++)
    {
        put_char(0x07,'\n');
    }
    init_screen();
    set_cursor(0);
    init_all();
    intr_enable(); /* 开中断 */
    // console_str(0x07,"\nPencil-Kernel (PKn) version 0.0.0 test\n");
    // console_str(0x07,"CPU    :");cpu_info();console_char(0x07,'\n');
    // console_str(0x07,"Memory :");console_int(0x07,TotalMem_l / 1024 / 1024,10);console_str(0x07,"MB ( ");console_int(0x07,TotalMem_l / 1024,10);put_str(0x07,"KB ) ");put_char(0x07,'\n');
    // console_str(0x07,"Disk   :");console_int(0x07,DiskCnt,10);console_char(0x07,'\n');


    // viewFill(background->buf,background->xsize,rgb(0,132,132),0,0,background->xsize - 1,background->ysize - 1);

    // vput_str(background->buf,ScrnX,20,20,rgb(255,255,255),PKn_Version);
    // sprintf(str,"Video Mode: 0x%x Scrnx = %d Scrny = %d\nMemory: %dMB", VideoMode, ScrnX, ScrnY,TotalMem_l / 1024 /1024);
    // vput_str(background->buf,ScrnX,20,36,rgb(255,255,255),"Copyright (c) 2021-2022 Pencil-Kernel developers, All rights reserved.");
    // vput_str(background->buf,ScrnX,20,52,rgb(255,255,255),str);
    // view_reflush(background,20,20,background->xsize,68);

    thread_start("k_a",31,k_thread_a,"arg_A ");
    thread_start("Mouse",31,View_thread,NULL);
    process_execute(u_prog_a,"user_progA");

    // thread_start("user_progA",31,u_prog_a,NULL);
    while(1); /* 这个死循环不能少 */

    return; /* 这句return应该永远不会执行,放在这里只是摆设用的 */
}

extern volatile int ticks;
void k_thread_a(void* arg)
{
    void* buf = kmalloc(sizeof(pixel_t) * ScrnX * 50);
    struct viewblock* task_bar = api_viewinit(ScrnX,50,buf);
    viewFill(buf,ScrnX,rgb(198,198,198),0,0,ScrnX - 1,50 - 1);
    int off = 3;

    viewFill(buf,ScrnX,rgb(132,132,132),10 + off,10 + off,40 + off,40 + off);
    viewFill(buf,ScrnX,rgb(255,255,255),      10,      10,      40,      40);

    int logo_x = 10;
    int logo_y = 10;
    int x;
    int y;
    for(y = 0;y < 15;y++)
    {
        for(x = 0;x < 15;x++)
        {
            if(PencilLogo[y][x] == '#')
            {
                viewFill(buf,ScrnX,rgb(132,132,132),logo_x + 2 * x,logo_y + 2 * y,logo_x + 2 * (x + 1) ,logo_y + 2 * (y + 1));
            }
        }
    }

    viewFill(buf,ScrnX,rgb(132,132,132),50 + off,10 + off,60 + off,40 + off);
    viewFill(buf,ScrnX,rgb(255,255,255),      50,      10,      60,      40);


    viewFill(buf,ScrnX,rgb(132,132,132),ScrnX - 153 + off,50 - 41 + off,ScrnX - 11 + off,50 - 11 + off);
    viewFill(buf,ScrnX,rgb(255,255,255),      ScrnX - 153,      50 - 41,      ScrnX - 11,      50 - 11);

    // api_viewinsert(task_bar);

    struct TIME time;  /* 十进制表示的现实时间 */
    get_time(&time);
    int old_tickes = ticks;
    char str[32];
    while(1)
    {
        sprintf(str,"%04x/%02x/%02x %02x:%02x",time.year,time.month,time.day,time.hour,time.minuet);
        viewFill(buf,ScrnX,rgb(255,255,255),ScrnX - 145,50 - 33,ScrnX - 17,50 - 18);
        vput_str(buf,ScrnX,ScrnX - 145,50 - 33,rgb(132,132,132),str);
        // api_viewslide(task_bar,0,ScrnY - 50);
        // api_viewflush(task_bar,ScrnX - 145,50 - 33,ScrnX - 17,50 - 18);
        api_viewslide(task_bar,0,ScrnY - 50);
        while(ticks <= old_tickes + 100){ ; } /* 时间发生变化时再刷新 */
        old_tickes = ticks;
        get_time(&time);
    }
}

void View_thread(void* arg)
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
    struct MouseData md;
    int mx = ScrnX / 2;
    int my = ScrnY / 2;
    api_viewslide(view,mx,my);
    while(1)
    {
        md = get_mouse();
        if(md.phase != 0)
        {
            mx += md.x;
            my += md.y;
            if(mx < 0){ mx = 0; }
            if(my < 0){ my = 0; }
            if(mx > ScrnX - 3){ mx = ScrnX - 3; }
            if(my > ScrnY - 3){ my = ScrnY - 3; }
            api_viewupdown(view,4);
            api_viewslide(view,mx,my);
        }
    }
}

void u_prog_a(void)
{
    pixel_t* buf = api_malloc(sizeof(pixel_t) * 100 * 100);
    ASSERT(buf != NULL);
    void* view = api_viewinit(100,100,buf);
    api_makeWindow(buf,100,100,"userprog");
    api_viewslide(view,100,100);
    while(1);
}