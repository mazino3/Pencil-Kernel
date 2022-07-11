#ifndef __APILIB_H__
#define __APILIB_H__

#include "message.h"
#include "stdint.h"

uint32_t sys_send(int src_dst,MESSAGE* msg);
uint32_t sys_receive(int src_dst,MESSAGE* msg);

#endif /* __APILIB_H__ */