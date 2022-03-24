/* list.h
* 链表
*/
#ifndef __LIST_H_
#define __LIST_H_

#include "global.h"

/* offset
* 求出member在struct_t类型的结构体中的地址偏移
*/
#define offset(struct_t,member) ((int)(&(((struct_t*)0)->member)))

/* list_cast
* 将struct_t的数据成员member的地址ptr转换为struct_t的地址
*/
#define list_cast(struct_t,member,ptr) ((struct_t *)(((int)ptr) - offset(struct_t,member)))

struct list_elem
{
    struct list_elem* prev;
    struct list_elem* next;
};

struct list
{
    struct list_elem head;
    struct list_elem tail;
};

typedef bool (func) (struct list_elem* ,int arg);

void list_init(struct list* L);
void list_in(struct list_elem* elem,struct list_elem* in_before);
void list_push(struct list* L,struct list_elem* elem);
void list_append(struct list* L,struct list_elem* elem);
struct list_elem* list_remove(struct list_elem* elem);
struct list_elem* list_pop(struct list* L);
bool list_find(struct list* L,struct list_elem* obj_elem);
struct list_elem* list_traversal(struct list* L,func function,int arg);
int list_len(struct list* L);
bool list_empty(struct list* L);

#endif /* __LIST_H_ */
