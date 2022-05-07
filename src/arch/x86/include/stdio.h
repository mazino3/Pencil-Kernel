#ifndef __STDIO_H__
#define __STDIO_H__

#include "stdarg.h"

int sprintf(char* buf,const char* fmt,...);
int vsprintf(char* buf,const char* fmt,va_list ap);

#endif /* __STDIO_H__ */