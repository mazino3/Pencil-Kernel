#include "graphic.h"

#include "debug.h"
#include "global.h"
#include "logo.h"
#include "memory.h"
#include "stdint.h"
#include "sync.h"


#include "stdio.h"

extern char HZK16;
PUBLIC struct viewctl Screen_Ctl;
PUBLIC struct viewblock* background;

pixel_t rgb(int r,int g,int b)
{
    int mask = 0;
    int size;

    uint8_t RedMaskSize = 0;
    uint8_t RedFieldPosition = 0;
    uint8_t GreenMaskSize = 0;
    uint8_t GreenFieldPosition = 0;
    uint8_t BlueMaskSize = 0;
    uint8_t BlueFieldPosition = 0;

    if(VbeVersion < 0x0300)
    {
        RedMaskSize = 8;
        RedFieldPosition = 16;
        GreenMaskSize = 8;
        GreenFieldPosition = 8;
        BlueMaskSize = 8;
        BlueFieldPosition = 0;
    }

    else if(VbeVersion >= 0x0300)
    {
        RedMaskSize        = *((uint8_t*)(0xc0000000 + ((ModeInfoBase16 << 4) + ModeInfoOff16) + 0x36));
        RedFieldPosition   = *((uint8_t*)(0xc0000000 + ((ModeInfoBase16 << 4) + ModeInfoOff16) + 0x37));
        GreenMaskSize      = *((uint8_t*)(0xc0000000 + ((ModeInfoBase16 << 4) + ModeInfoOff16) + 0x38));
        GreenFieldPosition = *((uint8_t*)(0xc0000000 + ((ModeInfoBase16 << 4) + ModeInfoOff16) + 0x39));
        BlueMaskSize       = *((uint8_t*)(0xc0000000 + ((ModeInfoBase16 << 4) + ModeInfoOff16) + 0x3a));
        BlueFieldPosition  = *((uint8_t*)(0xc0000000 + ((ModeInfoBase16 << 4) + ModeInfoOff16) + 0x3b));
    }
    for(size = RedMaskSize;size > 0;size--)
    {
        mask <<= 1;
        mask |= 1;
    }
    r &= mask;
    mask = 0;
    for(size = GreenMaskSize;size > 0;size--)
    {
        mask <<= 1;
        mask |= 1;
    }
    g &= mask;
    mask = 1;
    for(size = BlueMaskSize;size > 0;size--)
    {
        mask <<= 1;
        mask |= 1;
    }
    b &= mask;
    return ((r << RedFieldPosition) | (g << GreenFieldPosition) | (b << BlueFieldPosition));
}

void viewFill(pixel_t* vram,int xsize,pixel_t color,int x0,int y0,int x1,int y1)
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

void vput_char(pixel_t* vram,int xsize,int x,int y,pixel_t color,unsigned char c)
{
    // int i;
    // pixel_t* put;
    // uint8_t data;
    // int idx = c;
    // unsigned char* font = PKnFont[idx];
    if(DisplayMode == _GRAPHIC)
    {
        vput_hzk16(vram,xsize,x,y,color,c);
        // for(i = 0;i < 16;i++)
        // {
        //     put = (vram) + ((y + i) * (xsize) + x);
        //     data = font[i];
        //     if((data & 0x80) != 0){put[0] = color;}
        //     if((data & 0x40) != 0){put[1] = color;}
        //     if((data & 0x20) != 0){put[2] = color;}
        //     if((data & 0x10) != 0){put[3] = color;}
        //     if((data & 0x08) != 0){put[4] = color;}
        //     if((data & 0x04) != 0){put[5] = color;}
        //     if((data & 0x02) != 0){put[6] = color;}
        //     if((data & 0x01) != 0){put[7] = color;}
        // }
    }
    return;
}

void vput_hzk16(pixel_t* vram,int xsize,int x,int y,pixel_t color,uint16_t ch)
{
    int k;
    int t;
    uint16_t* font;
    if(ch >= 0 && ch <= 0xff) /* ASCII字符 */
    {
        if(ch >= 0x21 && ch <= 0x7e) /* ASCII可见字符 */
        {
            k = 3 - 1;
            t = (ch - 0x21);
            font = (uint16_t*)(&HZK16 + (k * 94 + t) * 32);
            uint16_t data;
            int i;
            pixel_t* put;
            for(i = 0;i < 16;i++)
            {
                put = (vram) + ((y + i) * (xsize) + x);
                data = font[i];
                if((data & 0x8000) != 0){put[0] = color;}
                if((data & 0x4000) != 0){put[1] = color;}
                if((data & 0x2000) != 0){put[2] = color;}
                if((data & 0x1000) != 0){put[3] = color;}
                if((data & 0x0800) != 0){put[4] = color;}
                if((data & 0x0400) != 0){put[5] = color;}
                if((data & 0x0200) != 0){put[6] = color;}
                if((data & 0x0100) != 0){put[7] = color;}
            }
        }
        // vput_char(vram,xsize,x,y,color,ch);
        return;
    }
    k = ((ch & 0xff00) >> 8) - 0xa1; /* 区 */
    t = (ch & 0x00ff)- 0xa1;      /* 位 */
    font = (uint16_t*)(&HZK16 + (k * 94 + t) * 32);
    uint16_t data;
    int i;
    pixel_t* put;
    for(i = 0;i < 16;i++)
    {
        put = (vram) + ((y + i) * (xsize) + x);
        data = font[i];
        if((data & 0x8000) != 0){put[0] = color;}
        if((data & 0x4000) != 0){put[1] = color;}
        if((data & 0x2000) != 0){put[2] = color;}
        if((data & 0x1000) != 0){put[3] = color;}
        if((data & 0x0800) != 0){put[4] = color;}
        if((data & 0x0400) != 0){put[5] = color;}
        if((data & 0x0200) != 0){put[6] = color;}
        if((data & 0x0100) != 0){put[7] = color;}

        if((data & 0x0080) != 0){put[8] = color;}
        if((data & 0x0040) != 0){put[9] = color;}
        if((data & 0x0020) != 0){put[10] = color;}
        if((data & 0x0010) != 0){put[11] = color;}
        if((data & 0x0008) != 0){put[12] = color;}
        if((data & 0x0004) != 0){put[13] = color;}
        if((data & 0x0002) != 0){put[14] = color;}
        if((data & 0x0001) != 0){put[15] = color;}
    }
}

void vput_str(pixel_t* vram,int xsize,int x,int y,pixel_t color,const char* str)
{
    vput_zh(vram,xsize,x,y,color,str);
    // int pos_x = x;
    // int pos_y = y;
    // while(*str != '\0')
    // {
    //     switch(*str)
    //     {
    //         case '\t':
    //             pos_x = (pos_x + (4 * 8)) & ~(4 * 8 - 1);
    //             break;
    //         case '\r':
    //         case '\n':
    //             pos_y += 16;
    //             pos_x = x;
    //             break;
    //         default:
    //             vput_hzk16(vram,xsize,pos_x,pos_y,color,*str);
    //             pos_x += 8;
    //             break;
    //     }
    //     str++;
    // }
    return;
}

void vput_zh(pixel_t* vram,int xsize,int x,int y,pixel_t color,const unsigned char* str)
{
    int pos_x = x;
    int pos_y = y;
    uint16_t zh;
    uint8_t byte0 = 0;
    uint8_t byte1;
    while(*str != '\0')
    {
        if(0x81 <= *str && *str <= 0xfe)
        {
            byte0 = *str;
            str++;
            byte1 = *str;
        }
        else
        {
            switch(*str)
            {
                case '\t':
                    pos_x = (pos_x + (4 * 8)) & ~(4 * 8 - 1);
                    break;
                case '\r':
                case '\n':
                    pos_y += 16;
                    pos_x = x;
                    break;
                default:
                    vput_char(vram,xsize,pos_x,pos_y,color,*str);
                    pos_x += 8;
                    break;
            }
        }
        if(byte0 != 0)
        {
            zh = ((((uint16_t)0 + byte0) << 8) + byte1); /*　拼接成16字节 */
            byte0 = 0;
            vput_hzk16(vram,xsize,pos_x,pos_y,color,zh);
            pos_x += 16;
        }
        str++;
    }
    return;
}

void init_screen()
{
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
                viewFill((void*)0xe0000000,ScrnX,rgb(255,255,255),x + 20 * j,y + 20 * i,x + 20 * (j + 1),y + 20 * (i + 1));
            }
            else
            {
                viewFill((void*)0xe0000000,ScrnX,rgb(0,0,0),x + 20 * j,y + 20 * i,x + 20 * (j + 1),y + 20 * (i + 1));
            }
        }
    }
    return;
}