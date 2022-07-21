#ifndef __API_H__
#define __API_H__

#include "global.h"
#include "message.h"
#include "stdint.h"

int32_t send_recv(int function,pid_t src_dst,struct MESSAGE* msg);

#endif /* __APILIB_H__ */