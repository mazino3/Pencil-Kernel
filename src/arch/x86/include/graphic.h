#ifndef __GRAPHIC_H__
#define __GRAPHIC_H__

#include "global.h"
#include "list.h"
#include "stdint.h"
#include "sync.h"

#define rgba(R,G,B,A) ((uint32_t)(0x00000000 |( A << 24 | R << 16 | G << 8 | B << 0 )))

#define Max_VIEWS 1024

typedef uint32_t pixel_t;
extern unsigned char PKnFont[256][16];

struct viewblock
{
    struct viewctl* ctl;          /* 图层对应的ctl */
    pid_t holder;                 /* 图层所有者 */
    pixel_t* buf;                 /* 图层内容 */
    int height;                   /* 图层高度 */
    int flage;
    int x;                        /* 图层x坐标 */
    int y;                        /* 图层y坐标 */
    int xsize;               /* 图层x轴长度 */
    int ysize;               /* 图层y轴长度 */
};

struct viewctl
{
    struct viewblock* views[Max_VIEWS]; /* 存放排序好的view的指针 */
    struct viewblock view0[Max_VIEWS];  /* 存放view */
    // int views;                /* view个数 */
    int top;                  /* 最上面的图层编号 + 1 */
    pixel_t* vram;            /* 显存 */
    int xsize;                /* x轴像素数 */
    int ysize;                /* y轴像素数 */
    ptr_t* map;               /* 刷新图层用的map */
};

void init_screen();
pixel_t rgb(int r,int g,int b);
/* 用color代表的颜色填充显存vram从(x0,y0)到(x1,y1)之间的区域 */
void viewFill(pixel_t* vram,int xsize,pixel_t color,int x0,int y0,int x1,int y1);
/* 将字符c以颜色color显示到显存的(x,y)处 */
void vput_char(pixel_t* vram,int xsize,int x,int y,pixel_t color,unsigned char c);
void vput_hzk16(pixel_t* vram,int xsize,int x,int y,pixel_t color,uint16_t ch);
/* 将字符串str以颜色color显示到显存的(x,y)处 */
void vput_str(pixel_t* vram,int xsize,int x,int y,pixel_t color,const char* str);
/* 显示字符串(中文) */
void vput_zh(pixel_t* vram,int xsize,int x,int y,pixel_t color,const unsigned char* str);
#endif /* __GRAPHIC_H__ */
