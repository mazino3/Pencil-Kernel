#include "interrupt.h"
#include "graphic.h"
#include "print.h"

void panic_spin(const char* file,int line,const char* func,const char* condition)
{
    intr_disable();
    set_cursor(0);
    // int i;
    // for(i = 0;i < 10 * 80;i++)
    // {
    //     put_char(0x17,' ');
    // }
    // set_cursor(0);
    // put_str(0x17,"\n Assert Error\n");
    // put_str(0x17," File:        ");put_str(0x17,file);put_char(0x17,'\n');
    // put_str(0x17," In function: ");put_str(0x17,func);put_char(0x17,'\n');
    // put_str(0x17," Line:        ");put_int(0x17,line,10);put_char(0x17,'\n');
    // put_str(0x17," Condition:   ");put_str(0x17,condition);put_char(0x17,'\n');
    // put_str(0x04,"\n Error\n");
    // put_str(0x04," File:        ");put_str(0x04,file);put_char(0x04,'\n');
    // put_str(0x04," In function: ");put_str(0x04,func);put_char(0x04,'\n');
    // put_str(0x04," Line:        ");put_int(0x04,line,10);put_char(0x04,'\n');
    // put_str(0x04," Condition:   ");put_str(0x04,condition);
    char str [127];
    sprintf(str,"\n Error\n File:        %s\n In function: %s\n Line:        %d\n Condition:   %s",file,func,line,condition);
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
