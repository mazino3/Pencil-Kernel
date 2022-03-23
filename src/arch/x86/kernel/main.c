#include "debug.h"
#include "global.h"
#include "graphic.h"
#include "init.h"
#include "interrupt.h"
#include "io.h"
#include "memory.h"
#include "print.h"
#include "string.h"
#include "thread.h"
#include "time.h"

struct TIME time;

void k_thread_a(void* arg);
void k_thread_b(void* arg);

void kernel_main(void)
{
    int i;
    if(DisplayMode == _TEXT)
    {
        for(i = 0;i < ScrnY;i ++)
        {
            roll_screen();
        }
    }
    set_cursor(0);
    init_all();
    intr_enable(); /* 开中断 */

    put_str1(0x07,"\nPencil-Kernel (PKn) version 0.0.0 test\n");
    put_str1(0x07,"Copyright (c) 2022 Linchenjun,All rights reserved.\n");
    put_str1(0x07,"Memory :");put_int(TotalMem_l / 1024 / 1024);put_str("MB");put_char('(');put_int(TotalMem_l / 1024);put_str("KB)");put_char('\n');
    put_str1(0x07,"Disk   :");put_int(DiskCnt);put_char('\n');
    put_str_graphic(&(Screen.win),20,20,0x00ffffff,"Pencil-Kernel (PKn) version 0.0.0 test");
    put_str_graphic(&(Screen.win),20,40,0x00ffffff,"Copyright (c) 2022 Linchenjun,All rights reserved.");
    
    thread_start("k_a",31,k_thread_a,0);
    thread_start("k_b",31,k_thread_b,0);
    
    //RectangleFill(&(Screen.win),0x00ffffff,30,40,40,50);

    while(1) /* 这个死循环不能少 */
    {
        ;
            
    }
    return; /* 这句return应该永远不会执行,放在这里只是摆设用的 */
}

void k_thread_a(void* arg)
{
    char buf[6] = "00000";
    uint32_t i = 0x00000000;
    int sec;
    int time_y = ScrnY - 1 - 33;
    int offset = 3;
    get_time(&time);
    while(1)
    {
        sec = time.second;
        RectangleFill(&(Screen.win), 0x00848484,ScrnX - 212 + offset,ScrnY - 1 - 40 + offset,ScrnX - 10 + offset,ScrnY - 1 - 10 + offset);
        RectangleFill(&(Screen.win), 0x00ffffff,ScrnX - 212,ScrnY - 1 - 40,ScrnX - 10,ScrnY - 1 - 10);
        
        itoa(time.year,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 202,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 162,time_y,i,'/');

        itoa(time.month,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 152,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 132,time_y,i,'/');

        itoa(time.day,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 122,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 102,time_y,i,' ');

        itoa(time.hour,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 92,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 72,time_y,i,':');

        itoa(time.minuet,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 62,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 42,time_y,i,':');

        itoa(time.second,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 32,time_y,0x00000000,buf);
        while(time.second == sec) /* 时间发生变化时再刷新 */
        {
            get_time(&time);
        }
    }
}

void k_thread_b(void* arg)
{
    uint32_t i = 0x00000000;
    while(1)
    {
        //RectangleFill(&(Screen.win),i,20,40,30,50);
        i++;
    }
}