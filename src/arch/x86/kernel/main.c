#include "console.h"
#include "cpu.h"
#include "debug.h"
#include "fifo.h"
#include "global.h"
#include "graphic.h"
#include "init.h"
#include "interrupt.h"
#include "io.h"
#include "memory.h"
#include "print.h"
#include "process.h"
#include "stdio.h"
#include "string.h"
#include "thread.h"
#include "time.h"
#include "tss.h"

extern struct FIFO keybuf;

void k_thread_a(void* arg);
void k_thread_b(void* arg);
void u_prog_a(void);

void kernel_main(void)
{
    int i;
    for(i = 0;i < 35;i++)
    {
        put_char(0x07,'\n');
    }
    set_cursor(0);
    init_all();
    intr_enable(); /* 开中断 */
    console_str(0x07,"\nPencil-Kernel (PKn) version 0.0.0 test\n");
    // console_str(0x07,"Copyright (c) 2021-2022 Pencil-Kernel developers,All rights reserved.\n\n");
    
    console_str(0x07,"CPU    :");cpu_info();console_char(0x07,'\n');
    console_str(0x07,"Memory :");console_int(0x07,TotalMem_l / 1024 / 1024,10);console_str(0x07,"MB ( ");console_int(0x07,TotalMem_l / 1024,10);put_str(0x07,"KB ) ");put_char(0x07,'\n');
    console_str(0x07,"Disk   :");console_int(0x07,DiskCnt,10);console_char(0x07,'\n');

    put_str_graphic(&(Screen.win),20,20,0x00ffffff,"Pencil-Kernel (PKn) version 0.0.0 test");
    // put_str_graphic(&(Screen.win),20,40,0x00ffffff,"Copyright (c) 2021-2022 Pencil-Kernel developers, All rights reserved.");

    thread_start("k_a",31,k_thread_a,"arg_A ");
    thread_start("k_b",31,k_thread_b,"arg_B ");

    // process_execute(u_prog_a,"user_prog");
    // thread_start("k_c",31,k_thread_c,"arg_C ");

    while(1); /* 这个死循环不能少 */

    return; /* 这句return应该永远不会执行,放在这里只是摆设用的 */
}

extern volatile int ticks;
void k_thread_a(void* arg)
{
    struct TIME startTime; /* 启动时从CMOS获取的BCD时间 */
    struct TIME time;  /* 十进制表示的现实时间 */
    get_time(&startTime);
    int old_tickes = ticks;
    /* BCD转10进制 */
    time.second = (startTime.second & 0x0f) + ((startTime.second >> 4) & 0x0f) * 10;
    time.minuet = (startTime.minuet & 0x0f) + ((startTime.minuet >> 4) & 0x0f) * 10;
    time.hour = (startTime.hour & 0x0f) + ((startTime.hour >> 4) & 0x0f) * 10;
    time.day = (startTime.day & 0x0f) + ((startTime.day >> 4) & 0x0f) * 10;
    time.month = (startTime.month & 0x0f) + ((startTime.month >> 4) & 0x0f) * 10;
    time.year = (startTime.year & 0x000f) + ((startTime.year >> 4) & 0x000f) * 10 + ((startTime.year >> 8) & 0x000f) * 100 + ((startTime.year >> 12) & 0x000f) * 1000;
    char str[32];
    int offset = 3;
    RectangleFill(&(Screen.win), 0x00848484,ScrnX - 182 + offset,ScrnY - 1 - 40 + offset,ScrnX - 10 + offset,ScrnY - 1 - 10 + offset);
    RectangleFill(&(Screen.win), 0x00ffffff,ScrnX - 182,ScrnY - 1 - 40,ScrnX - 10,ScrnY - 1 - 10);
    while(1)
    {
        sprintf(str,"%04d/%02d/%02d %02d:%02d:%02d",time.year,time.month,time.day,time.hour,time.minuet,time.second);
        RectangleFill(&(Screen.win), 0x00ffffff,ScrnX - 172,ScrnY - 1 - 33,ScrnX - 10,ScrnY - 1 - 17);
        put_str_graphic(&(Screen.win),ScrnX - 172,ScrnY - 1 - 33,0x00000000,str);
        while(ticks <= old_tickes + 100) /* 时间发生变化时再刷新 */
        {
            ;
        }
        old_tickes += 100;
        /* 时间步进 */
        (++time.second > 59 ? time.second = 0 || time.minuet++ : 0);
        (time.minuet > 59 ? time.minuet = 0 || time.hour++ : 0);
        (time.hour > 24 ? time.hour = 0 || time.day++ : 0);
        /* 天的步进要看月份 */
        switch(time.month)
        {
            /* 小月 */
            case 4:
            case 6:
            case 9:
            case 11:
                (time.day > 30 ? time.day = 1 || time.month++ : 0);
                break;
            /* 大月 */
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                (time.day > 31 ? time.day = 1 || time.month++ : 0);
                break;
            case 2:
                /* 如果是二月,还要判断是否是闰年 */
                /* 闰年:能被4整除,但不能被100整除 */
                /* 能被400整除 */
                if((time.year % 4 == 0 && time.year% 100 != 0) || (time.year % 400 == 0))
                {
                    (time.day > 29 ? time.day = 1 || time.month++ : 0);
                }
                else
                {
                    (time.day > 28 ? time.day = 1 || time.month++ : 0);
                }
                break;
        }
        (time.month > 12 ? time.month = 1 || time.year++ : 0);
    }
}
int ta = 0;
void k_thread_b(void* arg)
{
    char data;
    console_str(0x07,"[User]:");

    while(1)
    {
        if(!fifo_empty(&keybuf))
        {
            fifo_get(&keybuf,&data);
            console_char(0x07,data);
            RectangleFill(&(Screen.win),0x00848484,10,30,18,46);
            put_char_graphic(&(Screen.win),10,30,0x00ffffff,data);
        }
        // console_int(0x70,ta,10);
        // console_str(0x07," ");
    }
}

void u_prog_a(void)
{
    while(1)
    {
        ta++;
    }
}