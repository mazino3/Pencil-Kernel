/* ps/2 mouse */
#include "mouse.h"

#include "fifo.h"
#include "global.h"
#include "graphic.h"
#include "interrupt.h"
#include "io.h"
#include "keyboard.h"
#include "stdint.h"

PRIVATE volatile struct MouseData MouseData;

void init_mouse()
{
    wait_keyboard_ready();
    io_out8(KEYBOARD_CMD_PORT,KEYBOARD_CMD_SENDTO_MOUSE);
    wait_keyboard_ready();
    io_out8(KEYBOARD_BUF_PORT,KEYBOARD_CMD_ENABLE_MOUSE);
    MouseData.phase = 0;
    return;
}
volatile int i = 0;

void intr0x2c_handler()
{
    io_out8(PIC_S_CTRL,0x20);
    io_out8(PIC_M_CTRL,0x20);
    uint8_t data = io_in8(KEYBOARD_BUF_PORT);
    if(MouseData.phase == 0)
    {
        if(data == 0xfa)
        {
            MouseData.phase = 1;
        }
        return;
    }
    else if(MouseData.phase == 1)
    {
        if((data & 0xc8) == 0x08)
        {
            MouseData.buf[0] = data;
            MouseData.phase = 2;
        }
    }
    else if(MouseData.phase == 2)
    {
        MouseData.buf[1] = data;
        MouseData.phase = 3;
    }
    else if(MouseData.phase == 3)
    {
        MouseData.buf[2] = data;
        MouseData.phase = 4;
        MouseData.btn = MouseData.buf[0] & 0x07;
        MouseData.x = MouseData.buf[1];
        MouseData.y = MouseData.buf[2];
        if((MouseData.buf[0] & 0x10) != 0) /* x符号位 */
        {
            MouseData.x |= 0xffffff00;
        }
        if((MouseData.buf[0] & 0x20) != 0) /* y符号位 */
        {
            MouseData.y |= 0xffffff00;
        }
        MouseData.y = -MouseData.y;
    }
    return;
}

struct MouseData get_mouse()
{
    struct MouseData md;
    if(MouseData.phase != 4)
    {
        md.phase = 0;
        return md;
    }
    MouseData.phase = 1;
    return MouseData;
}