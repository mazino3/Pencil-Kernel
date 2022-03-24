#include "list.h"
#include "global.h"
#include "interrupt.h"

/* list_init
* 初始化链表
* L :链表指针
*/
void list_init(struct list* L)
{
    (L->head).prev = NULL;
    (L->head).next = &(L->tail);
    (L->tail).prev = &(L->head);
    (L->tail).next = NULL;
    return;
}

/* list_in
* 插入elem到in_before前面
* elem      :链表节点指针
* in_before :elem要插入的位置后一个元素
*/
void list_in(struct list_elem* elem,struct list_elem* in_before)
{
    enum intr_status status= intr_disable();

    elem->prev = in_before->prev;
    elem->next = in_before;
    (in_before->prev)->next = elem;
    in_before->prev = elem;

    intr_set_status(status);
    return;
}

/* list_push
* 把elem添加到队首,类似于push
* L    :链表指针
* elem :要添加的元素的指针
*/
void list_push(struct list* L,struct list_elem* elem)
{
    list_in(elem,(L->head).next);
    return;
}

/* list_append
* 添加elem到队尾
* L    :链表指针
* elem :要添加的元素的指针
*/
void list_append(struct list* L,struct list_elem* elem)
{
    list_in(elem,(L->tail).prev);
    return;
}

/* list_remove
* 将元素从链中退出
* elem :要弹出的元素
* 返回值:弹出后的元素的指针
*/
struct list_elem* list_remove(struct list_elem* elem)
{
    enum intr_status status = intr_disable();
    /* prev和next都不能为NULL, 因为上一个节点或下一个节点为NULL的元素不在链表中 */
    if(elem->prev != NULL && elem->next != NULL)
    {
        (elem->prev)->next = elem->next;
        (elem->next)->prev = elem->prev;
        elem->prev = NULL;
        elem->next = NULL;
    }

    intr_set_status(status);
    return elem;
}

/* list_pop
* 从队首弹出一个elem,类似于pop
* L     :链表指针
* 返回值 :弹出的元素指针
*/
struct list_elem* list_pop(struct list* L)
{
    return list_remove((L->head).next);
}

/* list_find
* 在链表中查找obj_elem
* 返回 false:查找失败
* 返回 true:找到元素
*/ 
bool list_find(struct list* L,struct list_elem* obj_elem)
{
    struct list_elem* elem = (L->head).next;
    while(elem != &(L->tail))
    {
        if(elem == obj_elem)
        {
            return true;
        }
        elem = elem->next;
    }
    return false;
}

struct list_elem* list_traversal(struct list* L,func function,int arg)
{
    struct list_elem* elem = L->head.next;
    while(elem != &(L->tail))
    {
        if(function(elem,arg))
        {
            return elem;
        }
        elem = elem->next;
    }
    return NULL;
}

int list_len(struct list* L)
{
    struct list_elem* elem = L->head.next;
    int len = 0;
    while(elem != &(L->tail))
    {
        len++;
        elem = elem->next;
    }
    return len;
}

bool list_empty(struct list* L)
{
    return (L->head.next == &(L->tail) ? true : false);
}