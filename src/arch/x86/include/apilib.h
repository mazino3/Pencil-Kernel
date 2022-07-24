#ifndef __APILIB_H__
#define __APILIB_H__

#include "global.h"
#include "graphic.h"
#include "message.h"
#include "stdint.h"

int32_t send_recv(int function,pid_t src_dst,struct MESSAGE* msg);

void* malloc(int size);
void free(void* addr);

void* api_viewCreat(int xsize,int ysize);
void api_viewFill(void* view,pixel_t color,int x0,int y0,int x1,int y1);

#endif /* __APILIB_H__ */