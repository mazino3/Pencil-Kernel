#ifndef __GRAPHIC_H__
#define __GRAPHIC_H__

#include "global.h"
#include "list.h"
#include "stdint.h"
#include "sync.h"

#define rgba(R,G,B,A) ((uint32_t)(0x00000000 |( A << 24 | R << 16 | G << 8 | B << 0 )))

#define Max_VIEWS 1024

typedef uint32_t pixel_t;

struct viewblock
{
    struct viewctl* ctl;          /* 图层对应的ctl */
    pid_t holder;                 /* 图层所有者 */
    pixel_t* buf;                 /* 图层内容 */
    int height;                   /* 图层高度 */
    int flage;
    int x;                        /* 图层x坐标 */
    int y;                        /* 图层y坐标 */
    uint32_t xsize;               /* 图层x轴长度 */
    uint32_t ysize;               /* 图层y轴长度 */
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

// extern struct viewctl Screen_Ctl;
// extern struct viewblock* background;

void init_screen();
pixel_t rgb(int r,int g,int b);
/* 创建一个viewctl */
void viewctl_init(struct viewctl* ctl,pixel_t* vram,int xsize,int ysize,int views);
/* 创建一个view */
struct viewblock* viewblock_init(int xsize,int ysize);
/* 释放view */
void view_free(struct viewblock* view);
/* 将view插入ctl的图层队列中 */
void viewInsert(struct viewctl* ctl,struct viewblock* view);
/* 将view移出队列 */
void viewRemove(struct viewblock* view);
/* 调整高度 */
void viewUpdown(struct viewblock* view,int height);
/* 移动图层 */
void viewSlide(struct viewblock* view,int x,int y);
/* 图层刷新 */
void view_reflush(struct viewblock* view,int x0,int y0,int x1,int y1);
/* 刷新一部分 */
void view_reflushsub(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0,int h1);
void view_reflushmap(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0);
/* 用color代表的颜色填充显存vram从(x0,y0)到(x1,y1)之间的区域 */
void viewFill(pixel_t* vram,int xsize,pixel_t color,int x0,int y0,int x1,int y1);
/* 将字符c以颜色color显示到显存的(x,y)处 */
void vput_char(pixel_t* vram,int xsize,int x,int y,pixel_t color,char c);
/* 将字符串str以颜色color显示到显存的(x,y)处 */
void vput_str(pixel_t* vram,int xsize,int x,int y,pixel_t color,const char* str);

#endif /* __GRAPHIC_H__ */
