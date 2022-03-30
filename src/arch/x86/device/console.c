#include "console.h"
#include "sync.h"
#include "print.h"
#include "stdint.h"

static struct lock console_lock;

void init_console()
{
    lock_init(&console_lock);
    return;
}

void console_char(uint8_t color,char ch)
{
    lock_acquire(&console_lock);
    put_char(color,ch);
    lock_release(&console_lock);
    return;
}

void console_str(uint8_t color,const char* str)
{
    lock_acquire(&console_lock);
    put_str(color,str);
    lock_release(&console_lock);
    return;
}

void colsole_int(uint8_t color,int num,int base)
{
    lock_acquire(&console_lock);
    put_int(color,num,base);
    lock_release(&console_lock);
    return;
}

void colsole_uint(uint8_t color,unsigned int num,int base)
{
    lock_acquire(&console_lock);
    put_uint(color,num,base);
    lock_release(&console_lock);
    return;
}