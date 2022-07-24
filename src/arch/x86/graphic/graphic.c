#include "graphic.h"

#include "global.h"
#include "logo.h"
#include "memory.h"
#include "stdint.h"
#include "sync.h"

extern unsigned char PKnFont[256][16];

void vramFill(pixel_t* vram,int xsize,pixel_t color,int x0,int y0,int x1,int y1)
{
    if(DisplayMode != _GRAPHIC)
    {
        return;
    }
    int x;
    int y;
    if((color & 0xff000000) != 0xff000000)
    {
        for(y = y0;y <= y1;y++)
        {
            for(x = x0;x <= x1;x++)
            {
                *((vram) + ((y * xsize)) + x) = color;
            }
        }
    }
    return;
}

void vput_char(pixel_t* vram,int xsize,int x,int y,pixel_t color,char c)
{
    int i;
    pixel_t* put;
    uint8_t data;
    int idx = c;
    unsigned char* font = PKnFont[idx];
    if(DisplayMode == _GRAPHIC)
    {
        for(i = 0;i < 16;i++)
        {
            put = (vram) + ((y + i) * (xsize) + x);
            data = font[i];
            if((data & 0x80) != 0){put[0] = color;}
            if((data & 0x40) != 0){put[1] = color;}
            if((data & 0x20) != 0){put[2] = color;}
            if((data & 0x10) != 0){put[3] = color;}
            if((data & 0x08) != 0){put[4] = color;}
            if((data & 0x04) != 0){put[5] = color;}
            if((data & 0x02) != 0){put[6] = color;}
            if((data & 0x01) != 0){put[7] = color;}
        }
    }
    return;
}

void vput_str(pixel_t* vram,int xsize,int x,int y,pixel_t color,const char* str)
{
    int pos_x = x;
    int pos_y = y;
    while(*str != '\0')
    {
        switch(*str)
        {
            case '\r':
            case '\n':
                pos_y += 16;
                pos_x = x;
                break;
            default:
                vput_char(vram,xsize,pos_x,pos_y,color,*str);
                pos_x+= 8;
                break;
        }
        str++;
    }
    return;
}

void init_screen()
{
    // viewctl_init(&Screen_Ctl,(void*)0xe0000000,ScrnX,ScrnY,512);
    // /* 创建背景 */
    // background = viewblock_init(ScrnX,ScrnY);
    // viewInsert(&Screen_Ctl,background);

    /* 显示logo */
    int x;
    int y;
    x = ScrnX / 2 - 7 * 20 - 10;
    y = ScrnY / 2 - 7 * 20 - 10;
    int i;
    int j;
    for(i = 0;i < 15;i++)
    {
        for(j = 0;j < 15;j++)
        {
            if(PencilLogo[i][j] == '#')
            {
                vramFill((void*)0xe0000000,ScrnX,rgb(255,255,255),x + 20 * j,y + 20 * i,x + 20 * (j + 1),y + 20 * (i + 1));
            }
            else
            {
                vramFill((void*)0xe0000000,ScrnX,rgb(0,0,0),x + 20 * j,y + 20 * i,x + 20 * (j + 1),y + 20 * (i + 1));
            }
        }
    }
    return;
}