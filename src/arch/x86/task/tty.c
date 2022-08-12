#include "task.h"

#include "apilib.h"
#include "config.h"
#include "debug.h"
#include "fifo.h"
#include "global.h"
#include "keyboard.h"
#include "list.h"
#include "stdio.h"
#include "thread.h"

void print_prompt();
void readline(char* cmd_line);
void win_roll_screen();
void help();


PRIVATE int pos_x = 1;
PRIVATE int pos_y = 24;

PRIVATE int win_xsize = 50 * 8;
PRIVATE int win_ysize = 15 * 16;

pixel_t* buf;
void* view;

void Type_task(void* arg)
{
    char cmd_line[128] = { 0 };
    // console_str(0x07,"\n[User]:");

    buf = api_malloc(sizeof(pixel_t) * win_xsize * win_ysize);
    ASSERT(buf != NULL);
    view = api_viewinit(win_xsize,win_ysize,buf);
    api_makeWindow(buf,win_xsize,win_ysize,"console");
    vput_str(buf,win_xsize,pos_x,pos_y,rgb(255,255,255),PKn_Version);
    pos_y += 16;
    api_viewslide(view,210,100);
    while(1)
    {
        print_prompt();
        api_viewflush(view,0,0,win_xsize,win_ysize);
        readline(cmd_line);
        // vput_str(buf,win_xsize,pos_x,pos_y,rgb(255,255,255),cmd_line);
        pos_x = 2;
        if(pos_y > win_ysize - 32)
        {
            win_roll_screen();
        }
        else
        {
            pos_y += 16;
        }
        // pos_x = 1;
        if(strcmp("help",cmd_line) == 0 || strcmp("?",cmd_line) == 0)
        {
            help();
        }
        else if(strcmp("cls",cmd_line) == 0)
        {
            int x,y;
            for(y = 23;y < win_ysize-1;y++)
            {
                for(x = 1;x < win_xsize-1;x++)
                {
                    buf[x+y* win_xsize] = rgb(0,0,0);
                }
            }
            pos_x = 1;
            pos_y = 24;
        }
        else if(strcmp("ps",cmd_line) == 0)
        {
            ps();
        }
        else
        {
            print_str("unknow command,and no such file or directory.\n");
            print_str(cmd_line);
            print_str("\nuse 'help' for help\n");
        }
    }
}

void print_str(const char* str)
{
    while(*str)
    {
        switch(*str)
        {
            case '\b':
            case '\n':
                pos_x = 2;
                if(pos_y > win_ysize - 32)
                {
                    win_roll_screen();
                }
                else
                {
                    pos_y += 16;
                }
                break;
            default:
                vput_char(buf,win_xsize,pos_x,pos_y,rgb(255,255,255),*str);
                pos_x += 8;
                if(pos_x > win_xsize - 16)
                {
                    pos_x = 2;
                    if(pos_y > win_ysize - 32)
                    {
                        win_roll_screen();
                    }
                    else
                    {
                        pos_y += 16;
                    }
                }
                break;
        }
        str++;
    }
    return;
}

void print_prompt()
{
    vput_str(buf,win_xsize,pos_x,pos_y,rgb(255,255,255),"[USER @ /]");
    pos_x += 10 * 8 + 1;
}

void readline(char* cmd_line)
{
    char data;
    int pos = 0;
    while(1)
    {
        // if(!fifo_empty(&keybuf))
        // {
            if(pos_x > win_xsize - 16)
            {
                pos_x = 2;
                if(pos_y > win_ysize - 32)
                {
                    win_roll_screen();
                }
                else
                {
                    pos_y += 16;
                }
            }
            fifo_get(&keybuf,&data);
            if(data == '\b' && pos > 0)
            {
                pos--;
                cmd_line[pos] = '\0';
                if(pos_x < 8)
                {
                    pos_x = win_xsize - 16;
                    if(pos_y > 23 + 16)
                    {
                        pos_y -= 16;
                    }
                }
                pos_x -= 8;
                // vput_char(buf,win_xsize,pos_x,pos_y,rgb(0,0,0),' ');
                viewFill(buf,win_xsize,rgb(0,0,0),pos_x,pos_y,pos_x + 8,pos_y + 16);
                api_viewflush(view,0,0,win_xsize,win_ysize);
                continue;
            }
            vput_char(buf,win_xsize,pos_x,pos_y,rgb(255,255,255),data);
            api_viewflush(view,0,0,win_xsize,win_ysize);
            if(data == enter)
            {
                cmd_line[pos] = '\0';
                return;
            }
            else
            {
                pos_x += 8;
            }
            cmd_line[pos] = data;
            pos++;
        }
    // }
}

void win_roll_screen()
{
    int x,y;
    for(y = 23;y < win_ysize - 16 - 1;y++)
    {
        for(x = 1;x < win_xsize -1;x++)
        {
            buf[x+y* win_xsize] = buf[x + (y + 16) * win_xsize];
        }
    }
    for(y = win_ysize - 16 - 1;y < win_ysize-1;y++)
    {
        for(x = 1;x < win_xsize-1;x++)
        {
            buf[x+y* win_xsize] = rgb(0,0,0);
        }
    }
    api_viewflush(view,0,0,win_xsize,win_ysize);
}

void help()
{
    print_str("buildin commands:\n");
    print_str("    cls:  clear screen\n");
    print_str("    ps:   show process information\n");
}

static bool print_thread(struct list_elem* pelem,int arg __attribute__((unused)))
{
    char str[128];
    struct task_struct* pthread = (struct task_struct*)(pelem->data);
    sprintf(str,"%-16s %-5d %-6d\n",pthread->name,pthread->pid,pthread->elapsed_ticks);
    print_str(str);
    return false;
}

void ps()
{
    print_str("Name             Pid   Ticks\n");
    print_str("---------------- ----- -----\n");
    list_traversal(&all_list,print_thread,0);
}