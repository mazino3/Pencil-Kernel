#ifndef __MOUSE_H__
#define __MOUSE_H__

#include "stdint.h"

#define KEYBOARD_CMD_SENDTO_MOUSE 0xd4
#define KEYBOARD_CMD_ENABLE_MOUSE 0xf4

struct MouseData
{
    uint8_t buf[3];
    int phase;
    signed int x;
    signed int y;
    int btn;
};

extern struct FIFO mouse_fifo;

void init_mouse();
void intr0x2c_handler();
int mouse_decode(struct MouseData* MouseData,uint8_t data);

#endif /* __MOUSE_H__ */