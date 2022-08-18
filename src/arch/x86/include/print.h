#ifndef __PRINT_H__
#define __PRINT_H__

#include "config.h"
#include "stdint.h"
#include "graphic.h"

// extern char PKnFont[256][16];

void put_char(uint8_t color,uint8_t char_asci);
void put_str(uint8_t color,const char* str);
void put_int(uint8_t color,int num,int base);
void put_uint(uint8_t color,unsigned int num,int base);

void roll_screen();
void itoa(int a,char* str,int base);
void utoa(unsigned int a,char* str,int base);
int get_cursor();
void set_cursor(uint32_t cursor_pos);
void cls_screen(void);

#endif /* __PRINT_H__ */
