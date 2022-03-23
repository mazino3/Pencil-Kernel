#include "print.h"
#include "config.h"
#include "global.h"
#include "graphic.h"
#include "io.h"

void put_char(uint8_t color,uint8_t char_ascii)
{
    if(DisplayMode == _TEXT)
    {
        uint16_t font = color;
        int cursor_pos;
        cursor_pos = get_cursor();
        switch(char_ascii)
        {
            /* 先是控制字符 */
            case '\0':
                return;
                break;
            /* 退格 */
            case '\b':
                cursor_pos--; /* 光标位置减1 */
                *((uint8_t*)(Vram_l + cursor_pos * 2)) = ' '; /* 在光标位置显示一个空格 */
                break;
            /* 回车和换行 */
            case '\n':
            case '\r':
                cursor_pos -= (cursor_pos % ScrnX);
                cursor_pos += ScrnX; /* 移动到下一行行首 */
                break;
            case '\t':
                cursor_pos = ((cursor_pos + 4) & ~(4 - 1));
                break;
            /* 普通字符 */
            default:
                font |= (char_ascii << 8);
                *((uint8_t*)(Vram_l + (cursor_pos * 2))) = char_ascii;
                *((uint8_t*)(Vram_l + (cursor_pos * 2) +1)) =color;
                cursor_pos++;
                break;
        }
        if(cursor_pos >= (ScrnX * ScrnY))
        {
            roll_screen();
            cursor_pos = ((ScrnY - 1) * ScrnX);
        }
        set_cursor(cursor_pos); /* 重设光标 */
    }
    return;
}

/* put_str
* 功能:显示字符串
*/
void put_str(uint8_t color,const char* str)
{
    while(*str != '\0')
    {
        put_char(color,*str);
        str++;
    }
    return;
}

void put_int(uint8_t color,int a,int base)
{
    char buf[64 +2] = {0};
    itoa(a,buf,base);
    put_str(color,buf);
    return;
}

void put_uint(uint8_t color,unsigned int a,int base)
{
    char buf[64 +2] = {0};
    utoa(a,buf,base);
    put_str(color,buf);
    return;
}


/* itoa
* 功能:将a转为base进制的字符串写入str地址
* a    :要转换的数字(有符号)
* str  :转换后的字符串的存储地址
* base :进制,最高支持36进制
*/
void itoa(int a,char* str,int base)
{
    static char digits[37] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    int i; /* 作为下标来索引 */
    int isNegative; /* 是否是负的？ */
    isNegative = a;
    if(a < 0) /* 如果是负数 */
    {
        a = -a; /* 先转换为正数 */
    }
    i = 0;
    /* 转换为字符串,不过是倒过来的 */
    do
    {
        str[i] = digits[a % base];
        i++;
        a = a / base;
    }while(a > 0);
    /* 是负数,就加上负号 */
    if(isNegative < 0)
    {
        str[i] = '-';
        i++;
    }
    str[i] = '\0'; /* 加上字符串结尾 */
    char* p = str;
    char* q = str;
    char tmp;
    while(*q != '\0')
    {
        q++;
    } 
    q--;
    /* 把字符串倒过来 */
    while(q > p)
    {
        tmp = *p;
        *p = *q;
        p++;
        *q = tmp;
        q--;
    }
    return;
}


/* utoa
* 功能:将a转为base进制的字符串写入str地址
* a    :要转换的数字(无符号)
* str  :转换后的字符串的存储地址
* base :进制,最高支持36进制
*/
void utoa(unsigned int a,char* str,int base)
{
    static char digits[37] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    int i; /* 作为下标来索引 */
    int isNegative; /* 是否是负的？ */
    isNegative = a;
    i = 0;
    /* 转换为字符串,不过是倒过来的 */
    do
    {
        str[i] = digits[a % base];
        i++;
        a = a / base;
    }while(a > 0);
    str[i] = '\0'; /* 加上字符串结尾 */
    char* p = str;
    char* q = str;
    char tmp;
    while(*q != '\0')
    {
        q++;
    } 
    q--;
    /* 把字符串倒过来 */
    while(q > p)
    {
        tmp = *p;
        *p = *q;
        p++;
        *q = tmp;
        q--;
    }
    return;
}

/* roll_screen
* 滚动屏幕
*/
void roll_screen()
{
    if(DisplayMode == _TEXT)
    {
        uint16_t* src;
        uint16_t* dst;
        src = ((uint16_t*)(Vram_l + ScrnX * 2)); /* 第一行行首 */
        dst = ((uint16_t*)(Vram_l)); /* 第0行行首 */
        int i;
        for(i = 0;i < ((ScrnX - 1) * ScrnY);i++)
        {
            *dst = *src;
            dst++;
            src++;
        }
    }
    return;
}

/* get_cursor
* 功能:获取光标位置
*/
int get_cursor()
{
    int cursor_pos = 0;
    /* 1. 获取高8位 */
    io_out8(0x03d4,0x0e);
    cursor_pos |= io_in8(0x03d5) << 8;

    /* 2. 获取低8位 */
    io_out8(0x03d4,0x0f);
    cursor_pos |= io_in8(0x03d5);
    
    return cursor_pos;
}

/* set_cursor
* 功能:设置光标位置
* row :光标行号
* col :光标列号
*/
void set_cursor(uint32_t cursor_pos)
{
    /* 1. 设置高8位 */
    io_out8(0x03d4,0x0e);
    io_out8(0x03d5,(cursor_pos & 0xff00) >> 8);

    /* 2. 设置低8位 */
    io_out8(0x03d4,0x0f);
    io_out8(0x03d5,cursor_pos & 0xff);
    
    return;
}
