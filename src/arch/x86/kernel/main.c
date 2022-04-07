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
#include "string.h"
#include "thread.h"
#include "time.h"
#include "tss.h"

extern struct FIFO keybuf;

void k_thread_a(void* arg);
void k_thread_b(void* arg);

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

    while(1); /* 这个死循环不能少 */

    return; /* 这句return应该永远不会执行,放在这里只是摆设用的 */
}

void k_thread_a(void* arg)
{
    struct TIME time;
    char buf[6];
    uint32_t i = 0x00000000;
    int min;
    int time_y = ScrnY - 1 - 33;
    int offset = 3;
    get_time(&time);
    while(1)
    {

        min = time.minuet;
        RectangleFill(&(Screen.win), 0x00848484,ScrnX - 182 + offset,ScrnY - 1 - 40 + offset,ScrnX - 10 + offset,ScrnY - 1 - 10 + offset);
        RectangleFill(&(Screen.win), 0x00ffffff,ScrnX - 182,ScrnY - 1 - 40,ScrnX - 10,ScrnY - 1 - 10);
        
        itoa(time.year,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 172,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 132,time_y,i,'/');

        itoa(time.month,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 122,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 102,time_y,i,'/');

        itoa(time.day,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 92,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 72,time_y,i,'|');

        itoa(time.hour,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 62,time_y,0x00000000,buf);
        put_char_graphic(&(Screen.win), ScrnX - 42,time_y,i,':');

        itoa(time.minuet,buf,16);
        put_str_graphic(&(Screen.win), ScrnX - 32,time_y,0x00000000,buf);
        while(time.minuet == min) /* 时间发生变化时再刷新 */
        {
            get_time(&time);
        }
    }
}

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
            if(data == 0x1c)
            {
                console_str(0x07,"[User]:");
            }
        }
    }
}