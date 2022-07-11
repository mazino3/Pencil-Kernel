#include "list.h"
#include "global.h"
#include "interrupt.h"

/* list_init
* 初始化链表
* L :链表指针
*/
void list_init(struct list* plist)
{
    (plist->head).prev = NULL;
    (plist->head).next = &(plist->tail);
    (plist->tail).prev = &(plist->head);
    (plist->tail).next = NULL;
    return;
}

/* list_in
* 插入elem到in_before前面
* elem      :链表节点指针
* in_before :elem插入的位置的后一个元素
*/
void list_in(struct list_elem* elem,struct list_elem* before)
{
    enum intr_status status= intr_disable();

    (before->prev)->next = elem;

    elem->prev = before->prev;
    elem->next = before;

    before->prev = elem;

    intr_set_status(status);
    return;
}

/* list_push
* 把elem添加到队首,类似于push
* L    :链表指针
* elem :要添加的元素的指针
*/
void list_push(struct list* plist,struct list_elem* elem)
{
    list_in(elem,(plist->head).next);
    return;
}

/* list_append
* 添加elem到队尾
* L    :链表指针
* elem :要添加的元素的指针
*/
void list_append(struct list* plist,struct list_elem* elem)
{
    list_in(elem,&(plist->tail));
    return;
}

/* list_remove
* 将元素从链中退出
* elem :要弹出的元素
*/
void list_remove(struct list_elem* elem)
{
    enum intr_status status = intr_disable();
    (elem->prev)->next = elem->next;
    (elem->next)->prev = elem->prev;
    intr_set_status(status);
    return;
}

/* list_pop
* 从队首弹出一个elem,类似于pop
* L     :链表指针
* 返回值 :弹出的元素指针
*/
struct list_elem* list_pop(struct list* plist)
{
    struct list_elem* elem = plist->head.next;
    list_remove(elem);
    return elem;
}

/* list_find
* 在链表中查找obj_elem
* 返回 false:查找失败
* 返回 true:找到元素
*/ 
bool list_find(struct list* plist,struct list_elem* obj_elem)
{
    struct list_elem* elem = (plist->head).next;
    while(elem != &(plist->tail))
    {
        if(elem == obj_elem)
        {
            return true;
        }
        elem = elem->next;
    }
    return false;
}

struct list_elem* list_traversal(struct list* plist,func function,int arg)
{
    struct list_elem* elem = plist->head.next;
    while(elem != &(plist->tail))
    {
        if(function(elem,arg))
        {
            return elem;
        }
        elem = elem->next;
    }
    return NULL;
}

int list_len(struct list* plist)
{
    struct list_elem* elem = plist->head.next;
    int len = 0;
    while(elem != &(plist->tail))
    {
        len++;
        elem = elem->next;
    }
    return len;
}

bool list_empty(struct list* plist)
{
    return (plist->head.next == &(plist->tail) ? true : false);
}