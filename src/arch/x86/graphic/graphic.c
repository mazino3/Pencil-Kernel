#include "graphic.h"
#include "global.h"
#include "memory.h"
#include "stdint.h"

extern unsigned char PKnFont[256][16];
// extern unsigned char* PKnFont;
PUBLIC struct viewctl* Screen_Ctl;

struct viewctl* viewctl_init(pixel_t* vram,int xsize,int ysize,int views)
{
    struct viewctl* ctl;
    struct viewblock** tmp_view;
    ctl = (struct viewctl*)sys_malloc(sizeof(struct viewctl));
    tmp_view = (struct viewblock**)sys_malloc(sizeof(struct viewblock*) * views);
    if(ctl == NULL || tmp_view == NULL)
    {
        return ctl;
    }
    ctl->view0 = tmp_view;
    ctl->views = views;
    ctl->top = 0;
    ctl->vram = vram;
    ctl->xsize = xsize;
    ctl->ysize = ysize;
    ctl->map = (ptr_t*)sys_malloc((sizeof(pixel_t) * xsize * ysize));
    if((ctl->map) == NULL)
    {
        sys_free(ctl);
        ctl = NULL;
    }
    return ctl;
}

struct viewblock* viewblock_init(int xsize,int ysize)
{
    struct viewblock* view = sys_malloc(sizeof(struct viewblock));
    if(view == NULL)
    {
        return NULL;
    }
    view->buf = sys_malloc(sizeof(pixel_t) * xsize * ysize);
    view->ctl = NULL;
    view->height = 0;
    view->x = 0;
    view->y = 0;

    view->xsize = xsize;
    view->ysize = ysize;
    return view;
}

void view_free(struct viewblock* view)
{
    if(view->ctl != NULL)
    {
        struct viewctl* ctl = view->ctl;
        viewRemove(view);
        view_reflush(ctl);
    }
    sys_free(view->buf);
    sys_free(view);
    return;
}

void viewInsert(struct viewctl* ctl,struct viewblock* view)
{
    view->ctl = ctl;
    if(ctl->top <= ctl->views - 1)
    {
        ctl->view0[ctl->top] = view;
        view->height = ctl->top;
        ctl->top++;
    }
    return;
}

void viewRemove(struct viewblock* view)
{
    int i;
    for(i = view->height;i < (view->ctl->top);i++)
    {
        view->ctl->view0[i] = view->ctl->view0[i - 1];
        view->ctl->view0[i]->height = i;
    }
    view->ctl->top--;
    view_reflush(view->ctl);
    view->ctl = NULL;
    return;
}

void viewUpdown(struct viewblock* view,int height)
{
    struct viewctl* ctl = view->ctl;
    int i;
    int old_height = view->height;
    /* 修正高度 */
    if(height > (ctl->top))
    {
        height = ctl->top;
    }
    if(height < 0)
    {
        height = 0;
    }
    view->height = height;
    /* 开始排序 */
    /* 图层下降 */
    if(old_height > height)
    {
        for(i = old_height;i > height;i--)
        {
            ctl->view0[i] = ctl->view0[i - 1];
            ctl->view0[i]->height = i;
        }
        ctl->view0[i] = view;
    }
    /* 图层升高 */
    else if(old_height < height)
    {
        for(i = old_height;i < height;i++)
        {
            ctl->view0[i] = ctl->view0[i + 1];
            ctl->view0[i]->height = i;
        }
        ctl->view0[i] = view;
    }
    /* 刷新 */
    view_reflush(ctl);
    return;
}

void viewSlide(struct viewblock* view,int x,int y)
{
    view->x = x;
    view->y = y;
    view_reflush(view->ctl);
    return;
}

void view_reflush(struct viewctl* ctl)
{
    int h;
    int bx;
    int by;
    int fx;
    int fy;
    struct viewblock* view;
    for(h = 0;h < (ctl->top);h++)
    {
        view = ctl->view0[h];
        for(by = 0;by < (view->ysize);by++)
        {
            fy = view->y + by;
            for(bx = 0;bx < (view->xsize);bx++)
            {
                fx = view->x + bx;
                ctl->vram[fy * (ctl->xsize) + fx] = view->buf[by * (view->xsize) + bx];
            }
        }
    }
    return;
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
    if(DisplayMode == _GRAPHIC)
    {
        Screen_Ctl = viewctl_init((void*)0xe0000000,ScrnX,ScrnY,1024);
        /* 创建背景 */
        struct viewblock* background = viewblock_init(ScrnX,ScrnY);
        viewFill(background->buf,background->xsize,rgb(0,132,132),0,0,background->xsize - 1,background->ysize - 1);
        viewInsert(Screen_Ctl,background);
        viewUpdown(background,0);
        view_reflush(Screen_Ctl);

        // test
        struct viewblock* v1 = viewblock_init(100,100);
        viewFill(v1->buf,v1->xsize,rgb(0,0,132),0,0,v1->xsize - 1,v1->ysize - 1);
        viewInsert(Screen_Ctl,v1);
        viewUpdown(v1,1);
        viewSlide(v1,10,10);

        viewRemove(v1);
        viewInsert(Screen_Ctl,v1);
        viewUpdown(v1,1);
    //     int offset = 3;
    //     init_Rectangle(&(scrn->win),(uint32_t*)0xe0000000,ScrnX,ScrnY,0,0);
    //     RectangleFill(&(scrn->win),0x00008484,0,0,ScrnX - 1,ScrnY - 1 - 50);
    //     /* 底部的任务栏 */
    //     RectangleFill(&(scrn->win),0x00c6c6c6,0,ScrnY - 1 - 50,ScrnX - 1,ScrnY - 1);
    //     /* 左边相当于'开始'菜单的那个按钮 */
    //     /* 按钮阴影 */
    //     RectangleFill(&(scrn->win),0x00848484,10 + offset,ScrnY - 1- 40 + offset,40 + offset,ScrnY - 1 - 10 + offset);
    //     /* 本体 */
    //     RectangleFill(&(scrn->win),0x00ffffff,10,ScrnY - 1 - 40,40,ScrnY - 1 - 10);

    //     /* 分隔符 */
    //     RectangleFill(&(scrn->win),0x00848484,50 + offset,ScrnY - 1 - 40 + offset,55 + offset,ScrnY - 1 - 10 + offset);
    //     RectangleFill(&(scrn->win),0x00ffffff,50,ScrnY - 1 - 40,55,ScrnY - 1 - 10);
    }
    return;
}