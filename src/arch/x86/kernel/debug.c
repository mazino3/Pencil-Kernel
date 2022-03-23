#include "interrupt.h"
#include "graphic.h"
#include "print.h"

extern uint8_t fcolor;

void panic_spin(const char* file,int line,const char* func,const char* condition)
{
    intr_disable();
    fcolor = 0x17;
    set_cursor(0);
    int i;
    for(i = 0;i < 10 * 80;i++)
    {
        put_char(' ');
    }
    set_cursor(0);
    put_str("Error\n");
    put_str("File:");put_str(file);put_char('\n');
    put_str("In function: ");put_str(func);put_char('\n');
    put_str("Line:");put_int(line);put_char('\n');
    put_str("Condition: ");put_str(condition);put_char('\n');
    while(1){;}
    return;
}
