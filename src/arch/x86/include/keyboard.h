#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__

#include "global.h"
#include "stdint.h"

#define KEYBOARD_BUF_PORT 0x60

/* 不可见字符 */
#define esc '\033'
#define backspace '\b'
#define tab '\t'
#define enter '\r'
#define delete '\177'

#define ctrl_l 0
#define ctrl_r 0
#define shift_l 0
#define shift_r 0
#define alt_l 0
#define alt_r 0
#define casplock 0

#define shift_l_m 0x2a
#define shift_r_m 0x36
#define alt_l_m 0x38
#define alt_r_m 0xe038
#define alt_r_b 0xe0b8
#define ctrl_l_m 0x1d
#define ctrl_r_m 0xe01d
#define ctrl_r_b 0xe09d
#define casplock_m 0x3a


void init_keyboard();
void intr0x21_handler(void);

#endif /* __KEYBOARD_H__ */