/* debug.h
*/

#ifndef __DEBUG_H__
#define __DEBUG_H__

#include "config.h"

void panic_spin(const char* file,const char* base_file,int line,const char* func,const char* condition);

#define PANIC(...) panic_spin(__FILE__,__BASE_FILE__,__LINE__,__func__,__VA_ARGS__)

#define ASSERT(CONDITION)          \
            if(CONDITION)          \
            {                      \
                                   \
            }                      \
            else                   \
            {                      \
                PANIC(#CONDITION); \
            }
#ifdef NDEBUG
    #undef ASSERT
    #define ASSERT(CONDITION) ((void)0);
#endif /* NDEBUG */

void log(char* info);

#endif /* __DEBUG_H__ */
