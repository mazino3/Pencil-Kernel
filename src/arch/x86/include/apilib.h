#ifndef __APILIB_H__
#define __APILIB_H__

#include "global.h"
#include "graphic.h"
#include "message.h"
#include "stdint.h"

int32_t send_recv(int function,pid_t src_dst,struct MESSAGE* msg);

void* api_malloc(int size);
void api_free(void* addr);
void api_mmcopy(void* dst,void* src,pid_t src_pid,int size);

void* api_viewinit(int xsize,int ysize,pixel_t* buf);
void api_viewflush(void* view,int x0,int y0,int x1,int y1);
void api_viewslide(void* view,int x,int y);
void api_viewupdown(void* view,int height);

void api_makeWindow(struct viewblock* view);

#endif /* __APILIB_H__ */