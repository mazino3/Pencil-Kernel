#ifndef __GRAPHIC_H__
#define __GRAPHIC_H__

#include "list.h"
#include "stdint.h"
#include "sync.h"

#define rgb(R,G,B) ((uint32_t)(0x00000000 |( R << 16 | G << 8 | B << 0 )))
#define rgba(R,G,B,A) ((uint32_t)(0x00000000 |( A << 24 | R << 16 | G << 8 | B << 0 )))

typedef uint32_t pixel_t;

/* 用color代表的颜色填充显存vram从(x0,y0)到(x1,y1)之间的区域 */
void vramFill(pixel_t* vram,int xsize,pixel_t color,int x0,int y0,int x1,int y1);
/* 将字符c以颜色color显示到显存的(x,y)处 */
void vput_char(pixel_t* vram,int xsize,int x,int y,pixel_t color,char c);
/* 将字符串str以颜色color显示到显存的(x,y)处 */
void vput_str(pixel_t* vram,int xsize,int x,int y,pixel_t color,const char* str);

#endif /* __GRAPHIC_H__ */
