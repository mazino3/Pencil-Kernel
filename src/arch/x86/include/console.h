#ifndef __CONSOLE_H__
#define __CONSOLE_H__

#include "stdint.h"

void init_console();
void console_char(uint8_t color,char ch);
void console_str(uint8_t color,const char* str);
void console_int(uint8_t color,int num,int base);
void console_uint(uint8_t color,unsigned int num,int base);

#endif /* __CONSOLE_H__ */