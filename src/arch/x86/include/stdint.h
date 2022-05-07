#ifndef __STDINT_H_
#define __STDINT_H_

#include "config.h"

//signed int
typedef signed char int8_t;
typedef signed short int16_t;
typedef signed int int32_t;
typedef signed long long int inu64_t;

//unsigned int
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;

// 不知道这个要定义在哪里,所以就放在这里了
typedef uint32_t ptr_t;

#endif /* __STDINT_H_ */
