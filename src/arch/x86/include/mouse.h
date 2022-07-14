#ifndef __MOUSE_H__
#define __MOUSE_H__

#include "stdint.h"

#define KEYBOARD_CMD_SENDTO_MOUSE 0xd4
#define KEYBOARD_CMD_ENABLE_MOUSE 0xf4

struct MouseData
{
    uint8_t buf[3];
    int phase;
    int x;
    int y;
    int btn;
};

void init_mouse();
void intr0x2c_handler();
struct MouseData get_mouse();

#endif /* __MOUSE_H__ */