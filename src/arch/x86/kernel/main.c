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
#include "memory.h"
#include "message.h"
#include "print.h"
#include "process.h"
#include "stdio.h"
#include "string.h"
#include "syscall.h"
#include "thread.h"
#include "time.h"
#include "tss.h"

void k_thread_a(void* arg);
void shell(void* arg);
void k_thread_c(void* arg);
void u_prog_a(void);
void u_prog_b(void);

void kernel_main(void)
{
    int i;
    char str[64];
    for(i = 0;i < 35;i++)
    {
        put_char(0x07,'\n');
    }
    set_cursor(0);
    init_all();
    intr_enable(); /* 开中断 */
    console_str(0x07,"\nPencil-Kernel (PKn) version 0.0.0 test\n");

    console_str(0x07,"CPU    :");cpu_info();console_char(0x07,'\n');
    console_str(0x07,"Memory :");console_int(0x07,TotalMem_l / 1024 / 1024,10);console_str(0x07,"MB ( ");console_int(0x07,TotalMem_l / 1024,10);put_str(0x07,"KB ) ");put_char(0x07,'\n');
    console_str(0x07,"Disk   :");console_int(0x07,DiskCnt,10);console_char(0x07,'\n');

    vput_str((void*)0xe0000000,ScrnX,20,20,rgb(255,255,255),PKn_Version);
    sprintf(str,"Video Mode: 0x%x Scrnx = %d Scrny = %d", VideoMode, ScrnX, ScrnY);
    vput_str((void*)0xe0000000,ScrnX,20,36,rgb(255,255,255),"Copyright (c) 2021-2022 Pencil-Kernel developers, All rights reserved.");
    vput_str((void*)0xe0000000,ScrnX,20,52,rgb(255,255,255),str);

    thread_start("k_a",31,k_thread_a,"arg_A ");
    thread_start("shell",31,shell,NULL);
    process_execute(u_prog_a,"user_prog");
    process_execute(u_prog_b,"user_prog");
    // thread_start("k_c",31,k_thread_c,"arg_C ");

    while(1); /* 这个死循环不能少 */

    return; /* 这句return应该永远不会执行,放在这里只是摆设用的 */
}

extern volatile int ticks;
void k_thread_a(void* arg)
{
    // struct TIME time;  /* 十进制表示的现实时间 */
    // get_time(&time);
    // int old_tickes = ticks;
    // char str[32];
    // int offset = 3;
    // RectangleFill(&(Screen.win), 0x00848484,ScrnX - 158 + offset,ScrnY - 1 - 40 + offset,ScrnX - 10 + offset,ScrnY - 1 - 10 + offset);
    // RectangleFill(&(Screen.win), 0x00ffffff,ScrnX - 158,ScrnY - 1 - 40,ScrnX - 10,ScrnY - 1 - 10);
    while(1)
    {
        // sprintf(str,"%04x/%02x/%02x %02x:%02x",time.year,time.month,time.day,time.hour,time.minuet);
        // RectangleFill(&(Screen.win), 0x00ffffff,ScrnX - 148,ScrnY - 1 - 33,ScrnX - 10,ScrnY - 1 - 17);
        // put_str_graphic(&(Screen.win),ScrnX - 148,ScrnY - 1 - 33,0x00000000,str);
        // while(ticks <= old_tickes + 100) /* 时间发生变化时再刷新 */
        // {
            ;
        // }
        // old_tickes = ticks;
        // get_time(&time);
    }
}
volatile int ta = 0;
volatile int tb = 0;

void shell(void* arg)
{
    char data;
    console_str(0x07,"\n[User]:");
    int pos_x = 20;
    int pos_y = 100;
    while(1)
    {
        if(!fifo_empty(&keybuf))
        {
            fifo_get(&keybuf,&data);
            console_char(0x07,data);
            vput_char((void*)0xe0000000,ScrnX,pos_x,pos_y,rgb(255,255,255),data);
            pos_x += 8;
            if (data == enter)
            {
             pos_x = 20;
             pos_y += 16;
             console_str(0x07,"[User]:");
            }
        }
        // put_uint(0x70,ta,10);
        // put_uint(0x07,tb,10);
    }
}

void u_prog_a(void)
{
    int res;
    MESSAGE msg;
    __asm__ __volatile__("int $0x4d":"=a"(res):"a"(SYS_GETPID),"b"(5),"c"(&msg));
            ta = res;
    while(1)
    {

    }
}

void u_prog_b(void)
{
    int res;
    char* str = "hello world!";
    __asm__ __volatile__("int $0x4d":"=a"(res):"a"(SYS_PRINT),"b"(str),"c"(0));
    tb = res;
    while(1);
}