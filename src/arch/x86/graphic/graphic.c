#include "graphic.h"

#include "global.h"
#include "logo.h"
#include "memory.h"
#include "stdint.h"
#include "sync.h"

extern unsigned char PKnFont[256][16];

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

// void viewctl_init(struct viewctl* ctl,pixel_t* vram,int xsize,int ysize,int views)
// {
//     ctl->view0 = (struct viewblock**)kmalloc(sizeof(struct viewblock*) * views);
//     ctl->views = views;
//     ctl->top = 0;
//     ctl->vram = vram;
//     ctl->xsize = xsize;
//     ctl->ysize = ysize;
//     ctl->map = (ptr_t*)kmalloc((sizeof(pixel_t) * xsize * ysize));
//     lock_init(&(ctl->lock));
//     return;
// }

// struct viewblock* viewblock_init(int xsize,int ysize)
// {
//     struct viewblock* view = kmalloc(sizeof(struct viewblock));
//     if(view == NULL)
//     {
//         return NULL;
//     }
//     view->buf = kmalloc(sizeof(pixel_t) * xsize * ysize);
//     if(view->buf == NULL)
//     {
//         kfree(view);
//         return NULL;
//     }
//     view->ctl = NULL;
//     view->height = 0;
//     view->x = 0;
//     view->y = 0;

//     view->xsize = xsize;
//     view->ysize = ysize;
//     return view;
// }

// void view_free(struct viewblock* view)
// {
//     if(view->ctl != NULL)
//     {
//         viewRemove(view);
//     }
//     kfree(view->buf);
//     kfree(view);
//     return;
// }

// void viewInsert(struct viewctl* ctl,struct viewblock* view)
// {
//     lock_acquire(&(ctl->lock));
//     if(ctl->top <= ctl->views - 1)
//     {
//         view->ctl = ctl;
//         ctl->view0[ctl->top] = view;
//         view->height = ctl->top;
//         ctl->top++;
//     }
//     lock_release(&(ctl->lock));
//     return;
// }

// void viewRemove(struct viewblock* view)
// {
//     int i;
//     lock_acquire(&(view->ctl->lock));
//     for(i = view->height;i < (view->ctl->top - 1);i++)
//     {
//         view->ctl->view0[i] = view->ctl->view0[i - 1];
//         view->ctl->view0[i]->height = i;
//     }
//     view->ctl->top--;
//     view_reflushmap(view->ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,0);
//     view_reflushsub(view->ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,0,view->height);
//     lock_release(&(view->ctl->lock));
//     view->height = 0;
//     view->ctl = NULL;
//     return;
// }

// void viewUpdown(struct viewblock* view,int height)
// {
//     struct viewctl* ctl = view->ctl;
//     int i;
//     int old_height = view->height;
//     /* 修正高度 */
//     lock_acquire(&(ctl->lock));
//     if(height > (ctl->top - 1))
//     {
//         height = ctl->top - 1;
//     }
//     if(height < 0)
//     {
//         height = 0;
//     }
//     view->height = height;
//     /* 开始排序 */
//     /* 图层下降 */
//     if(old_height > height)
//     {
//         for(i = old_height;i > height;i--)
//         {
//             ctl->view0[i] = ctl->view0[i - 1];
//             ctl->view0[i]->height = i;
//         }
//         ctl->view0[i] = view;
//         /* 刷新 */
//         view_reflushmap(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height + 1);
//         view_reflushsub(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height + 1,old_height);

//     }
//     /* 图层升高 */
//     else if(old_height < height)
//     {
//         for(i = old_height;i < height;i++)
//         {
//             ctl->view0[i] = ctl->view0[i + 1];
//             ctl->view0[i]->height = i;
//         }
//         ctl->view0[i] = view;
//         /* 刷新 */
//         view_reflushmap(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height);
//         view_reflushsub(ctl,view->x,view->y,view->x + view->xsize,view->y + view->ysize,view->height,view->height);
//     }
//     lock_release(&(ctl->lock));
//     return;
// }

// void viewSlide(struct viewblock* view,int x,int y)
// {
//     int x0 = view->x;
//     int y0 = view->y;
//     view->x = x;
//     view->y = y;
//     view_reflushmap(view->ctl,x0,y0,x0 + (view->xsize),y0 + (view->ysize),0);
//     view_reflushmap(view->ctl,view->x,view->y,view->x + (view->xsize),view->y + (view->ysize),view->height);
//     view_reflushsub(view->ctl,x0,y0,x0 + (view->xsize),y0 + (view->ysize),0,view->height - 1);
//     view_reflushsub(view->ctl,view->x,view->y,view->x + (view->xsize),view->y + (view->ysize),view->height,view->height);
//     return;
// }

// void view_reflush(struct viewblock* view,int x0,int y0,int x1,int y1)
// {
//     view_reflushsub(view->ctl,view->x + x0,view->y + y0,view->x + x1,view->y + y1,view->height,view->height);
//     return;
// }

// void view_reflushsub(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0,int h1)
// {
//     int bx;
//     int by;
//     int bx0;
//     int by0;
//     int bx1;
//     int by1;
//     int x;
//     int y;
//     int h;
//     struct viewblock* view;
//     lock_acquire(&(ctl->lock));
//     if(x0 < 0){ x0 = 0; }
//     if(y0 < 0){ y0 = 0; }
//     if(x1 > (ctl->xsize)){ x1 = ctl->xsize; }
//     if(y1 > (ctl->ysize)){ y1 = ctl->ysize; }
//     for(h = h0;h <= h1;h++)
//     {
//         view = ctl->view0[h];
//         bx0 = x0 - view->x;
//         by0 = y0 - view->y;
//         bx1 = x1 - view->x;
//         by1 = y1 - view->y;
//         if(bx0 < 0){ bx0 = 0; }
//         if(by0 < 0){ by0 = 0; }
//         if(bx1 > (view->xsize)){ bx1 = view->xsize; }
//         if(by1 > (view->ysize)){ by1 = view->ysize; }
//         for(by = by0;by < by1;by++)
//         {
//             y = (view->y) + by;
//             for(bx = bx0;bx < bx1;bx++)
//             {
//                 x = (view->x) + bx;
//                 /* 根据map刷新 */
//                 if(ctl->map[y * (ctl->xsize) + x] == (ptr_t)view)
//                 {
//                     ctl->vram[y * (ctl->xsize) + x] = view->buf[by * (view->xsize) + bx];
//                 }
//             }
//         }
//     }
//     lock_release(&(ctl->lock));
//     return;
// }

// void view_reflushmap(struct viewctl* ctl,int x0,int y0,int x1,int y1,int h0)
// {
//     int bx;
//     int by;
//     int bx0;
//     int by0;
//     int bx1;
//     int by1;
//     int x;
//     int y;
//     int h;
//     struct viewblock* view;
//     lock_acquire(&(ctl->lock));
//     if(x0 < 0){ x0 = 0; }
//     if(y0 < 0){ y0 = 0; }
//     if(x1 > (ctl->xsize)){ x1 = ctl->xsize; }
//     if(y1 > (ctl->ysize)){ y1 = ctl->ysize; }
//     for(h = h0;h < (ctl->top);h++)
//     {
//         view = ctl->view0[h];
//         bx0 = x0 - view->x;
//         by0 = y0 - view->y;
//         bx1 = x1 - view->x;
//         by1 = y1 - view->y;
//         if(bx0 < 0){ bx0 = 0; }
//         if(by0 < 0){ by0 = 0; }
//         if(bx1 > (view->xsize)){ bx1 = view->xsize; }
//         if(by1 > (view->ysize)){ by1 = view->ysize; }
//         for(by = by0;by < by1;by++)
//         {
//             y = (view->y) + by;
//             for(bx = bx0;bx < bx1;bx++)
//             {
//                 x = (view->x) + bx;
//                 if((view->buf[by * (view->xsize) + bx] & 0xff000000) != 0xff000000)
//                 {
//                     ctl->map[y * (ctl->xsize) + x] = (ptr_t)view;
//                 }
//             }
//         }
//     }
//     lock_release(&(ctl->lock));
//     return;
// }

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
        str++;
    }
    return;
}

void init_screen()
{

    // pixel_t* buf = kmalloc(sizeof(pixel_t) * ScrnX * ScrnY);
    // void* view = api_viewinit(ScrnX,ScrnY,buf);

    // viewctl_init(&Screen_Ctl,(void*)0xe0000000,ScrnX,ScrnY,512);
    /* 创建背景 */
    // background = view;
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