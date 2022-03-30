#include "interrupt.h"
#include "graphic.h"
#include "print.h"

extern uint8_t fcolor;

void panic_spin(const char* file,int line,const char* func,const char* condition)
{
    intr_disable();
    // set_cursor(0);
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
    put_str(0x04," Error\n");
    put_str(0x04," File:        ");put_str(0x04,file);put_char(0x04,'\n');
    put_str(0x04," In function: ");put_str(0x04,func);put_char(0x04,'\n');
    put_str(0x04," Line:        ");put_int(0x04,line,10);put_char(0x04,'\n');
    put_str(0x04," Condition:   ");put_str(0x04,condition);
    while(1){;}
    return;
}
