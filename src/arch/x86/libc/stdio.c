#include "stdio.h"
#include "print.h"
#include "stdarg.h"
#include "string.h"

#define FORMAT_LEFT 0
#define FORMAT_RIGHT 1
#define FORMAT_SPACE 0
#define FORMAT_ZERO 1

int sprintf(char* buf,const char* fmt,...)
{
    va_list ap;
    va_start(ap,fmt);
    int len;
    len = vsprintf(buf,fmt,ap);
    va_end(ap);
    return len;
}

int vsprintf(char* buf,const char* fmt,va_list ap)
{
    char* str,*s,digits[37];
    int repeat;
    int flage;
    int align;
    int width;
    for(str = buf;*fmt != '\0';fmt++)
    {
        if(*fmt != '%')
        {
            *str = *fmt;
            str++;
            continue;
        }
        fmt++;/* %后面的字符 */
        digits[0] = 0;
        flage = 0;
        align = FORMAT_RIGHT;
        repeat = 1;
        while(repeat)
        {
            /* %后可以加'+','-',' ','0','#' */
            switch(*fmt)
            {
            case '+':
                align = FORMAT_RIGHT;
                break;
            case '-':
                align = FORMAT_LEFT;
                break;
            case '0':
                flage |= FORMAT_ZERO;
            case ' ':
                break;
            case '#':
                break;
            default:
                fmt--; /* 与后面的fmt++抵消 */
                repeat = 0;
                break;
            }
            fmt++;
        }
        width = 0;
        while(*fmt >= '0' && *fmt <= '9')
        {
            width = width * 10 + (*fmt - '0');
            fmt++;
        }
        if(width == 0)
        {
            align = FORMAT_LEFT;
        }
        switch(*fmt)
        {
        case '%':/* %% */
            *str = '%';
            str++;
            break;
        case 'c':/* %c */
            *str = va_arg(ap,int);
            str++;
            break;
        case 'd': /* %d */
            itoa(va_arg(ap,int),digits,10);

            break;
        case 'o': /* %o */
            itoa(va_arg(ap,int),digits,8);
            break;
        case 's': /* %s */
            s = va_arg(ap,char*);
            strcpy(str,s);
            str += strlen(s);
            break;
        case 'x': /* %x */
            itoa(va_arg(ap,int),digits,16);
            break;
        }
        width -= strlen(digits);
        while(width > 0 && align == FORMAT_RIGHT)
        {
            *str = (flage & FORMAT_ZERO ? '0' : ' ');
            str++;
            width--;
        }
        strcpy(str,digits);
        str += strlen(digits);
        /* 左对齐的情况 */
        while(width > 0 && align == FORMAT_LEFT)
        {
            *str = ' ';
            str++;
            width--;
        }
        
    }
    return strlen(buf);
}
