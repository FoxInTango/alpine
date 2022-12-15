#ifndef _LIB_CPP_STRUCT_H_foxintango
#define _LIB_CPP_STRUCT_H_foxintango
#include "memory.h"
#include "define.h"

namespaceBegin(foxintango)

/** 说明
 *  独立结构体   :
 *  离散结构体组 :
 *  对齐结构体组 :
 *  结构体集合   :
 *
 * */

/** '间谍'特征
 *     8  7  6  5  4  3  2  1
 *  0b X  X  X  X  X  X  X  X
 *     |        |   |  |  |  |- 是否数组结尾
 *     |        |   |  |  |---- 是否数组中间
 *     |        |   |  |------- 是否数组开头
 *     |        |   |---------- 是否指向下一元素
 *     |        |-------------- 是否指向上一元素 
 *     |----------------------- '间谍'潜入时,是否丢弃所占空间数据
 *
 *
 *
 *     NOTE : 碰撞问题
 * */
// enum struct_range_element_spy_t {
const int struct_range_element_spy_nul = 0b00000000;
const int struct_range_element_spy_beg = 0b00000100; // array begin
const int struct_range_element_spy_mid = 0b00000010;
const int struct_range_element_spy_end = 0b00000001; // array end
const int struct_range_element_spy_prv = 0b00001000; // pointer to another element
const int struct_range_element_spy_nxt = 0b00010000; // link 
const int struct_range_element_spy_dty = 0b10000000; // destroy
// };

/**
struct struct_range_element_spy_lnk_s {
    void* prev;
    void* next;
};
struct struct_range_element_spy_ptr_s {
    void* next;
};

union struct_range_element_spy_entity {
    struct_range_element_spy_lnk_s lnk;
    struct_range_element_spy_ptr_s ptr;
};
*/

struct struct_range_element_spy_s {
    int type;
    void* prv = 0;
    void* nxt = 0;
};

#define struct_range_element_spy_size sizeof(struct_range_element_spy_s)

/** 判定方式
 *  
 * */
template <typename S>
bool struct_range_element_is_spy(S* s) {
    if(s) {
        struct_range_element_spy_s* p = (struct_range_element_spy_s*)s;
        return ( p->type & struct_range_element_spy_beg ) || 
               ( p->type & struct_range_element_spy_end ) || 
               ( p->type & struct_range_element_spy_prv ) || 
               ( p->type & struct_range_element_spy_nxt ) ? true : false;
    }

    return false;
}

/**
struct struct_range_element_header_s {
    struct_range_element_header_s* prev;
    struct_range_element_header_s* next;
};
*/

/**
template <typename S>
S* struct_array_prve(S* s,const int& size) {
    if(!s) return nullptr;

    if(s->type == struct_range_element_header_beg) return nullptr;

    return s - size;
}*/

/**
template <typename S>
S* struct_array_next(S* s,const int& size) {
    if(!s) return nullptr;

    if(s->type == struct_range_element_header_end) return nullptr;

    return s + size;
}*/

// struct_array_at
// struct_array_begin
// struct_array_end

/**
 * @type         : '间谍'特征
 * @array        : 结构体元素数组首指针,如果该地址为空指针,则将'间谍'置为游离
 * @array_size   : 结构体数组元素个数
 * @element_size : 结构体元素大小 - sizeof
 * @index        : 将被替换的结构体元素处于数组的位置
 * @prv          : 上一元素指针
 * @nxt          : 下一元素指针
 * */
inline void struct_range_element_spy_make(const int& type,void* array,const int& array_size,const int& element_size,const unsigned int& index,void* prv,void* nxt) {
    /** 流程
     *  数组指针(array)有效性判断 > 无效返回
     *  |
     *  判断元素大小是否能够容纳'间谍' > 计算需要几个数组元素能够容纳'间谍' - 判断后方空间能否容纳'间谍' > 判断加上前方空间能否容纳间谍 > 开辟新空间,并重置数组指针
     *                                                                                                     |
     *                                                                                                     
     * */
    if(!array) return;

    if(element_size >= sizeof(struct_range_element_spy_s)) {
        void* e = (void*)((char*)array + index * element_size);
        /** 是否丢弃
         * */
        if(0 != (struct_range_element_spy_dty & type)) {
            /** 判断是否具有下一元素指针,有 则生成游离'间谍',并附加所占元素于后
             *                           无 则开辟空间存储所占元素
             * */

            if(nxt) {
                memclr(e,element_size);
                struct_range_element_spy_s* s = (struct_range_element_spy_s*)e;
                s->type = type;
                s->prv = prv;
                s->nxt = nxt;
            }
        }
    } else {

    }
/**
 * struct_range_element_spy_s* p = (struct_range_element_spy_s*)(element);
 * p->type = t;
 */
}

template <typename S>
void struct_range_element_spy_make_beg(S& s) {
    struct_range_element_spy_s* p = (struct_range_element_spy_s*)(&s);
     p->type |= struct_range_element_spy_beg;
}
/** 
 * @ size : sizeof(S)
 * return : entity of struct s with header as rang end.
 * NOTE   : sizeof(S) > sizeof(struct_range_element_header_s).
 * */
template <typename S>
void struct_range_element_spy_make_end(S& s) {
    struct_range_element_spy_s* p = (struct_range_element_spy_s*)(&s);
    p->type |= struct_range_element_spy_end;
}

template <typename S>
unsigned int struct_range_element_count(const S& s) {
    return 0;
}

template <typename S>
int struct_range_element_append();
template <typename S>
int struct_range_element_insert();
template <typename S>
int struct_range_element_remove();
template <typename S>
S* struct_range_element_at();

int struct_range_clone(const int& beg = 0,const int& end = -1);
int struct_range_contact();
namespaceEnd
#endif
