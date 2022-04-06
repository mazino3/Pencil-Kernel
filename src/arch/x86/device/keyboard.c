#include "keyboard.h"
#include "fifo.h"
#include "global.h"
#include "interrupt.h"
#include "io.h"
#include "memory.h"
#include "print.h"
#include "stdint.h"

static char buf[64];
struct FIFO keybuf;

static bool ctrl_status;
static bool shift_status;
static bool alt_status;
static bool casplock_status;
static bool ext_scandcode;

static char keymap [][2] = 
{
    /*    shift */
    { 0  ,   0}, /* 0x00 */
    { esc, esc}, /* 0x01 */
    { '1', '!'}, /* 0x02 */
    { '2', '@'}, /* 0x03 */
    { '3', '#'}, /* 0x04 */
    { '4', '$'}, /* 0x05 */
    { '5', '%'}, /* 0x06 */
    { '6', '^'}, /* 0x07 */
    { '7', '&'}, /* 0x08 */
    { '8', '*'}, /* 0x09 */
    { '9', '('}, /* 0x0a */
    { '0', ')'}, /* 0x0b */
    { '-', '_'}, /* 0x0c */
    { '=', '+'}, /* 0x0d */
    { backspace, backspace}, /* 0x0e */
    { tab, tab}, /* 0x0f */
    { 'q', 'Q'}, /* 0x10 */
    { 'w', 'W'}, /* 0x11 */
    { 'e', 'E'}, /* 0x12 */
    { 'r', 'R'}, /* 0x13 */
    { 't', 'T'}, /* 0x14 */
    { 'y', 'Y'}, /* 0x15 */
    { 'u', 'U'}, /* 0x16 */
    { 'i', 'I'}, /* 0x17 */
    { 'o', 'O'}, /* 0x18 */
    { 'p', 'P'}, /* 0x19 */
    { '[', '{'}, /* 0x1a */
    { ']', '}'}, /* 0x1b */
    { enter, enter}, /* 0x1c */
    { ctrl_l, ctrl_l}, /* 0x1d */
    { 'a', 'A'}, /* 0x1e */
    { 's', 'S'}, /* 0x1f */
    { 'd', 'D'}, /* 0x20 */
    { 'f', 'F'}, /* 0x21 */
    { 'g', 'G'}, /* 0x22 */
    { 'h', 'H'}, /* 0x23 */
    { 'j', 'J'}, /* 0x24 */
    { 'k', 'K'}, /* 0x25 */
    { 'l', 'L'}, /* 0x26 */
    { ';', ':'}, /* 0x27 */
    { '\'', '"'}, /* 0x28 */
    { '`', '~'}, /* 0x29 */
    { shift_l, shift_l}, /* 0x2a */
    { '\\', '|'}, /* 0x2b */
    { 'z', 'Z'}, /* 0x2c */
    { 'x', 'X'}, /* 0x2d */
    { 'c', 'C'}, /* 0x2e */
    { 'v', 'V'}, /* 0x2f */
    { 'b', 'B'}, /* 0x30 */
    { 'n', 'N'}, /* 0x31 */
    { 'm', 'M'}, /* 0x32 */
    { ',', '<'}, /* 0x33 */
    { '.', '>'}, /* 0x34 */
    { '/', '?'}, /* 0x35 */
    { shift_r, shift_r}, /* 0x36 */
    { '*', '*'}, /* 0x37 */
    { alt_l, alt_l}, /* 0x38 */
    { ' ', ' '}, /* 0x39 */
    { casplock, casplock}, /* 0x3a */
};

void init_keyboard()
{
    init_fifo(&keybuf,buf,8,64);
    return;
}

void intr0x21_handler(void)
{
    io_out8(PIC_M_CTRL,0x20);
    // bool ctrl_down = ctrl_status;
    bool shift_down = shift_status;
    bool casplock_down = casplock_status;

    bool break_code;
    uint16_t scancode = io_in8(KEYBOARD_BUF_PORT);
    /* 拓展码,跳过 */
    if(scancode == 0xe0)
    {
        ext_scandcode = true;
        return;
    }
    /* 上一个是拓展码,合并 */
    if(ext_scandcode == true)
    {
        scancode |=  0xe000;
        ext_scandcode = false;
    }
    /* 是通码还是断码 */
    break_code = ((scancode & 0x0080) != 0); /* break_code:true or false */
    
    if(break_code == true) /* 是断码 */
    {
        /* 还原成通码 */
        scancode &= 0xff7f;
        switch(scancode)
        {
            case ctrl_l_m:
            case ctrl_r_m:
                ctrl_status = false;
                break;
            case shift_l_m:
            case shift_r_m:
                shift_status = false;
                break;
            case alt_l_m:
            case alt_r_m:
                alt_status = false;
                break;
        }
        return;
    }
    /* 是通码 */
    else if((scancode < 0x3b && scancode > 0x00) || scancode == alt_r_m || scancode == ctrl_r_m)
    {
        bool shift = false;
        /* 可以与shift结合的按键 */
        if((scancode < 0x0e) || (scancode == 0x29) || (scancode == 0x1a) || (scancode == 0x1b) || (scancode == 0x2b) || (scancode == 0x27) || (scancode == 0x28) || (scancode >= 0x33 && scancode <= 0x35))
        {
            /* shift被按下 */
            if(shift_down == true)
            {
                shift = true;
            }
        }
        /* 其他按键 */
        else
        {
            /* shift和casplock都按下,互相抵消 */
            if(shift_down && casplock_down)
            {
                shift = false;
            }
            /* shift或casplock被按下 */
            else if(shift_down || casplock_down)
            {
                shift = true;
            }
            /* shift没有被按下 */
            else
            {
                shift = false;
            }
        }
        /* 获取字符 */
        scancode &= 0x00ff;
        char cur_char = keymap[scancode][shift];
        /* 字符可以显示 */
        if(cur_char != 0)
        {
            /* 缓冲区未满 */
            if(!(fifo_fill(&keybuf)))
            {
                /* 加入缓冲区 */
                fifo_put(&keybuf,&cur_char);
            }
            return;
        }
        /* shift,ctrl和casplock有没有被按下? */
        switch(scancode)
        {
            case ctrl_l_m:
            case ctrl_r_m:
                ctrl_status = true;
                break;
            case shift_l_m:
            case shift_r_m:
                shift_status = true;
                break;
            case alt_l_m:
            case alt_r_m:
                alt_status = true;
                break;
            case casplock_m:
                casplock_status =! casplock_status; /* 按下casplock,casplock状态反转 */
                break;
            default:
                /* 未知按键 */
                put_str(0x04,"unknow key");
        }
    }
    return;
}