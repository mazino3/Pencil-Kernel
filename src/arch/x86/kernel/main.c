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

extern volatile int ticks;

void kernel_main(void)
{
    int i;
    set_cursor(0);
    for(i = 0;i < 35;i++)
    {
        put_char(0x07,'\n');
    }
    init_screen();
    set_cursor(0);
    init_all();
    intr_enable(); /* 开中断 */
    int x,y;
    x = ScrnX / 2;
    y = ScrnY - 50;
    x = ScrnX / 2 - 100;
    vput_zh((void*)0xe0000000,ScrnX,x + 12,y - 32,rgb(255,255,255),"Pencil-Kernel 正在启动");
    viewFill((void*)0xe0000000,ScrnX,rgb(255,255,255),x-1,y-1,x+201,y + 21);
    viewFill((void*)0xe0000000,ScrnX,rgb(0,0,0),x,y,x+200,y + 20);
    int cnt = 200;
    while(cnt--)
    {
        i = ticks + 1;
        while(ticks < i);
        viewFill((void*)0xe0000000,ScrnX,rgb(255,255,255),x,y,x+1,y + 20);
        x+= 1;
    }
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
    thread_start("Mouse",31,Mouse_task,NULL);
    thread_start("console",31,shell_task,NULL);
    process_execute(u_prog_a,"user_progA");
    // thread_start("user_progA",31,u_prog_a,NULL);
    while(1){ ;}
    return;
}

void k_thread_a(void* arg)
{
    struct viewblock* background;
    char str[65];
    void* back_buf = kmalloc(sizeof(pixel_t) * ScrnX * ScrnY);
    ASSERT(back_buf != NULL);
    background = api_viewinit(ScrnX,ScrnY,back_buf);

    viewFill(back_buf,ScrnX,rgb(0,132,132),0,0,ScrnX - 1,ScrnY - 1);
    vput_str(back_buf,ScrnX,20,10,rgb(255,255,255),PKn_Version);
    sprintf(str,"Video Mode: 0x%x Scrnx = %d Scrny = %d Memory: %dMB", VideoMode, ScrnX, ScrnY,TotalMem_l / 1024 /1024);
    vput_str(back_buf,ScrnX,20,26,rgb(255,255,255),str);

    cpu_info(str);
    vput_str(background->buf,ScrnX,20,42,rgb(255,255,255),str);

    viewFill(back_buf,ScrnX,rgb(198,198,198),0,ScrnY - 50,ScrnX - 1,ScrnY - 1);
    int off = 3;
    viewFill(back_buf,ScrnX,rgb(132,132,132),10 + off,ScrnY - 40 + off,40 + off,ScrnY - 10 + off);
    viewFill(back_buf,ScrnX,rgb(255,255,255),10      ,ScrnY - 40      ,40      ,ScrnY - 10      );
    
    int logo_x = 10;
    int logo_y = ScrnY - 40;
    int x;
    int y;
    for(y = 0;y < 15;y++)
    {
        for(x = 0;x < 15;x++)
        {
            if(PencilLogo[y][x] == '#')
            {
                viewFill(back_buf,ScrnX,rgb(132,132,132),logo_x + 2 * x,logo_y + 2 * y,logo_x + 2 * (x + 1) ,logo_y + 2 * (y + 1));
            }
        }
    }
    viewFill(back_buf,ScrnX,rgb(132,132,132),50 + off,ScrnY - 40 + off,60 + off,ScrnY - 10 + off);
    viewFill(back_buf,ScrnX,rgb(255,255,255),50      ,ScrnY - 40      ,60      ,ScrnY - 10      );


    viewFill(back_buf,ScrnX,rgb(132,132,132),ScrnX - 153 + off,ScrnY - 41 + off,ScrnX - 11 + off,ScrnY - 11 + off);
    viewFill(back_buf,ScrnX,rgb(255,255,255),ScrnX - 153      ,ScrnY - 41      ,ScrnX - 11      ,ScrnY - 11      );

    struct TIME time;
    get_time(&time);
    int old_tickes = ticks;
    api_viewslide(background,0,0);
    api_viewupdown(background,0);
    while(1)
    {
        sprintf(str,"%04x/%02x/%02x %02x:%02x",time.year,time.month,time.day,time.hour,time.minuet);
        viewFill(back_buf,ScrnX,rgb(255,255,255),ScrnX - 145,ScrnY - 33,ScrnX - 17,ScrnY - 18);
        vput_str(back_buf,ScrnX,ScrnX - 145,ScrnY - 33,rgb(132,132,132),str);
        api_viewflush(background,ScrnX - 145,ScrnY - 33,ScrnX - 17,ScrnY - 18);
        while(ticks <= old_tickes + 100){ ; } /* 时间发生变化时再刷新 */
        old_tickes = ticks;
        get_time(&time);
    }
}

void u_prog_a(void)
{
    pixel_t* buf = api_malloc(sizeof(pixel_t) * 100 * 100);
    ASSERT(buf != NULL);
    void* view = api_viewinit(100,100,buf);
    api_makeWindow(view,buf,100,100,"测试进程");
    api_viewslide(view,100,100);
    api_viewupdown(view,api_gettop());
    api_viewflush(view,0,0,100,100);
    while(1);
}