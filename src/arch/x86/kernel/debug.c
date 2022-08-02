#include "interrupt.h"
#include "graphic.h"
#include "print.h"
#include "stdio.h"
#include "thread.h"

void panic_spin(const char* file,const char* base_file,int line,const char* func,const char* condition)
{
    intr_disable();
    set_cursor(0);
    char str [127];
    sprintf(str,"\n Error\n File:        %s\n Base File:   %s\n In function: %s\n Line:        %d\n Condition:   %s\n Running:     %s",file,base_file,func,line,condition,running_thread()->name);
    put_str(0x04,str);
    vput_str((void*)0xe0000000,ScrnX,0,0,rgb(255,0,0),str);
    while(1){;}
    return;
}

void log(char* info)
{
    put_str(0x06," [ Log]");put_str(0x06,info);put_char(0x06,'\n');
    return;
}
