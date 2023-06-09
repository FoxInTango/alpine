/*
 * alpine
 *
 * Copyright (C) 2022 FoxInTango <foxintango@yeah.net>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 * 
 * 一切有为法，如梦幻泡影
 * 如露亦如电，应作如是观
 * 
 * 读经只为毁三观，毁掉三观使劲参
 * 若是今生参不透，来世还来颠倒颠
 */
#include <vector>
#include <map>
#include <set>
#include <bitset>
#include <fstream>
#include <codecvt>
#include <iostream>
#include <string>
#include <cstring>
#include <cassert>
#include <locale>
#include <signal.h>
#include <sched.h>
#include <libast/libast.h>
#include <libarguments/libarguments.h>
using namespace foxintango;

/** TESTS
 *  io client : alpine io connect -ip 192.168.1.6 -port 80
 *  io server : alpine io listen  -ip "0.0.0.0"   -port 80
 */

#include "alpine.h"

void echo_utf8_bits(unsigned char* utf8){
    Index index8 = 0;
    Index index32 = 0;
    char charactor[8];
    while (utf8[index8]) {
        Size cl = (Size)sizeof(charactor);
        memclr(charactor,cl,0);
        if (utf8[index8] < 0b10000000) {
            charactor[0] = utf8[index8];
            std::cout << "charactor : " << charactor << "  bits : " << std::bitset<8>(charactor[0]) << std::endl;
            index8++;
        }
        else if (utf8[index8] < 0b11100000) { // 110xxxxx 10xxxxxx
            charactor[0] = utf8[index8];
            charactor[1] = utf8[index8 + 1];
            std::cout << "charactor : " << charactor << "  bits : " << std::bitset<8>(charactor[0]) << " " <<std::bitset<8>(charactor[1]) << std::endl;
            index8 += 2;
        }
        else if (utf8[index8] < 0b11110000) { // 1110xxxx 10xxxxxx 10xxxxxx
            charactor[0] = utf8[index8];
            charactor[1] = utf8[index8 + 1];
            charactor[2] = utf8[index8 + 2];
            std::cout << "charactor : " << charactor << "  bits : " << std::bitset<8>(charactor[0]) << " " << std::bitset<8>(charactor[1]) << " " << std::bitset<8>(charactor[2]) << std::endl;
            index8 += 3;
        }
        else { // 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
            charactor[0] = utf8[index8];
            charactor[1] = utf8[index8 + 1];
            charactor[2] = utf8[index8 + 2];
            charactor[3] = utf8[index8 + 3];
            std::cout << "charactor : " << charactor << "  bits : " << std::bitset<8>(charactor[0]) << " " << std::bitset<8>(charactor[1]) << " " << std::bitset<8>(charactor[2]) << " " << std::bitset<8>(charactor[3]) << std::endl;
            index8 += 4;
        }

        index32++;
    }
}

void echo_utf32_bits(const Unicode* unicode){
    Index index = 0;
    while(unicode[index]){
        std::cout << "unicode : " << std::bitset<32>(unicode[index]) << std::endl;
        index ++;
    }
}

#ifdef USE_VIRTUAL_METHOD
int Alpine::onevent(int event){ return event; } 
#else
int onevent(const Alpine& alpine, int e) { return e; }
#endif

/** buffer size >= 4
 */
Size get_input(char* buffer){
    char* c = buffer;
    memclr(c,4,0);
    c[0] = getchar();
    Index segment  = c[0] < 0b11000000 ? 1 : (c[0] < 0b11100000 ? 2 : (c[0] < 0b11110000 ? 3 : 4));

    switch (segment) {
    case 1: { return 1;}break;// 0000 0000 - 0000 007F    0xxxxxxx
    case 2: { c[1] = getchar(); return 2; }break;// 0000 0080 - 0000 07FF    110xxxxx 10xxxxxx
    case 3: { c[1] = getchar(); c[2] = getchar(); return 3; }break;// 0000 0800 - 0000 FFFF    1110xxxx 10xxxxxx 10xxxxxx
    case 4: { c[1] = getchar(); c[2] = getchar(); c[3] = getchar(); return 4; }break;// 0001 0000 - 0010 FFFF    11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
    default:break;
    }
    return 0;
}


template<typename T>
struct lbt_node{
    lbt_node* l;
    lbt_node* r;
    lbt_node* s;
    T t;
};

template<typename T>
bool lbt_make_branch(lbt_node<T>* node, const T& bl, const T& br, const T& top) {
    if (node) {
        if (node->s) {
            node->l = new struct lbt_node<T>();
            node->r = new struct lbt_node<T>();

            node->l->s = node;
            node->r->s = node;

            if (node->t < top) {
                node->l->t = ((node->t + bl) / 2) + 1;
                node->r->t = ((node->t + node->s->t) / 2) + 1;
            }
            else {
                node->l->t = ((node->t + node->s->t) / 2) + 1;
                node->r->t = ((node->t + br) / 2) + 1;
            }

            if ((((node->l->t + 1) / 2) + 1) == node->t) {
                lbt_make_branch(node->l);
            }
            if ((((node->r->t + 1) / 2) + 1) == node->t) {
                lbt_make_branch(node->r);
            }
        }
        else {
            node->l = new struct lbt_node<T>();
            node->r = new struct lbt_node<T>();

            node->l->s = node;
            node->r->s = node;

            node->l->t = ((bl + node->t) / 2) + 1;
            node->r->t = ((br + node->t) / 2) + 1;

            if ((((node->l->t + 1) / 2) + 1) == node->t) {
                lbt_make_branch(node->l);
            }
            if ((((node->r->t + 1) / 2) + 1) == node->t) {
                lbt_make_branch(node->r);
            }
        }
    }
}

template<typename T>
lbt_node<T>* lbt_make(const T& top){
    struct lbt_node<T>* node = new struct lbt_node<T>();

    if(node){
        node->l = 0;
        node->r = 0;
        node->s = 0;

        node->t = top;

        lbt_make_branch(node);
    }

    return node;
}



template<typename T>
void lbt_node_traverse(lbt_node<T>* node,const Index& target,const Index& current){
    if(node){
        if (current == target) {
            std::cout << node->t << std::endl;
            return ;
        }
        lbt_node_traverse(node->l,target,current + 1);
        lbt_node_traverse(node->r,target,current + 1);
    }
}


int main(int argc, char* argv[]) {
    arguments startup_arguments(argc,argv);
    startup_arguments.echo();
    std::cout << "Alpine Init: " << alpine.init(startup_arguments) << std::endl;
#ifdef USE_VIRTUAL_METHOD
    std::cout << "alpine.onevent :" << alpine.onevent(10) << std::endl;
#else
    alpine.onevent = onevent;
    std::cout << "alpine.onevent :" << alpine.onevent(alpine, 10) << std::endl;
#endif 
    char     utf8[] = "12345";
    char* c = "67890";
    String s(utf8);
    char* ns = 0;
    s.as(&ns);
    std::cout << "converted : " << ns << std::endl;   
    std::cout << "original  : " << utf8 << std::endl;

    s.contact(c);
    s.as(&ns);
    std::cout << "contacted : " << ns << std::endl;
    
    /*
    std::cout << " -- bits -- " << std::endl;
    echo_utf8_bits((unsigned char*)utf8);
    echo_utf8_bits((unsigned char*)ns);
    echo_utf32_bits(s.unicode());
    std::cout << " ß  size : " << sizeof('ß') << "  bits : " << std::bitset<32>(L'ß') << std::endl;
    */
    char* ss = s;
    printf("\033[0;30;40m color!!! \033[0m Hello \n");
    std::cout << "string -- let : " << ss << std::endl;

    Size segment_size = 32;
    mem_segment<unsigned int> segment(segment_size, mem_segment_type_s);
    mem_segment<unsigned int>* tail = new mem_segment<unsigned int>();
    segment.setBehind(tail);
    mem_segment<unsigned int>* clone = segment.clone();

    printf("segment cloned -- behind : %p \n", clone->behind());
//#define SEGMENT_APPEND
//#define SEGMENT_INSERT
//#define SEGMENT_REMOVE
//#define SEGMENT_REPLACE
    /** mem_segment 追加测试
     * 
     */
#ifdef SEGMENT_APPEND
    for(unsigned int i = 0;i < segment_size;i ++){
        segment.append(i);
    }

    
#endif // SEGMENT_APPEND
    /** mem_segment 插入测试
     *
     */
#define segment_insert_index 8

/** 用例
 *  一，有空位 首部插入 尾部插入 中部插入
 *  二，无空位 首部插入 尾部插入 中部插入
 */
Error error;
#ifdef SEGMENT_INSERT
    std::cout << "-------- SEGMENT_INSERT --------" << error << std::endl;
    for(int unsigned i = 0;i < segment_size - 16;i ++){
        //if(i != segment_insert_index) segment.append(i);
        segment.append(i);
    }

    
    error = segment.insert(segment_insert_index, segment_insert_index);
    error = segment.insert(segment_insert_index + 1, segment_insert_index + 1);
    error = segment.insert(segment_insert_index + 8, segment_insert_index + 8);
    std::cout << "segment insert error : " << error << std::endl;
    std::cout << "segment size : " << segment.size() << "  element count : " << segment.count() << std::endl;
    for (unsigned int i = 0; i < segment.count(); i++) {
        std::cout << "    mem_lement " << i << " : " << segment[i].element << std::endl;
    }

#endif
#ifdef SEGMENT_REMOVE
    std::cout << "-------- SEGMENT_REMOVE --------" << error << std::endl;
    error = segment.remove(segment_insert_index);
    error = segment.remove(segment_insert_index + 1);
    error = segment.remove(segment_insert_index + 8);
    std::cout << "segment remove error : " << error << std::endl;
#endif // SEGMENT_REMOVE

#ifdef SEGMENT_REPLACE
    std::cout << "-------- SEGMENT_REMOVE --------" << error << std::endl;
    error = segment.replace(30000,segment_insert_index);
    error = segment.replace(30000,segment_insert_index + 1);
    error = segment.replace(30000,segment_insert_index + 8);
    std::cout << "segment remove error : " << error << std::endl;
    std::cout << "segment size : " << segment.size() << "  element count : " << segment.count() << std::endl;
    for (unsigned int i = 0; i < segment.count(); i++) {
        std::cout << "    mem_lement " << i << " : " << segment[i].element << std::endl;
    }
#endif // SEGMENT_REMOVE
    Array<unsigned int> array(1024);
    /** Array 追加 测试
    
    for(int i= 0;i < 204800;i ++){
        array.append(i);
    }

    for(int i = 0;i < array.size();i ++){
        std::cout << "Array Element " << i << " : " << array[i]<< std::endl;
    }
    */

    /** Array 插入 测试
     */
     /*
     for(unsigned int i = 0;i < 1024;i ++){
         array.append(i);
     }

     for (unsigned int i = 0; i < 1024; i++) {
         array.insert(20230603, i * 10);
     }

     Array<unsigned int> new_array;
     new_array = array;
     
     
     
     for (int i = 0; i < new_array.size(); i++) {
         std::cout << "Array Element " << i << " : " << array[i] << std::endl;
     }

     std::cout << "old array segment count : " << array.segmentCount() << std::endl;
     std::cout << "new array segment count : " << new_array.segmentCount() << std::endl;
     */
     /*
     for(unsigned int i = 0;i < 4096;i ++){
         if(array[i * 10] == 20230603){
             std::cout << "index " << i * 10 << " equal with 20230603." << std::endl; 
         } else std::cout << "index " << i * 10 << " missed with number  : " << array[i * 10] << std::endl;
     }

     std::cout << "Array size " << array.size() * sizeof(unsigned int) << std::endl;
     */

#include <fstream>
     //std::ifstream input_stream("./input.txt");
     //std::streambuf* cin_stream = std::cin.rdbuf(input_stream.rdbuf());
     /*
     Array<String*> contents;
     char input[4];
     memclr(input,4,0);
     Index offset = 0;
     bool newline = true;
     bool quit = false;
     while(!quit){
         get_input(input);
         if(input[0] == '\n'){
             String* is = new String(input);
             contents.append(is);
             if(*is == "quit"){
                 
                 quit == true;

                 for(unsigned int i = 0;i < contents.size();i ++){
                     delete contents[i];
                 }
             }
         }
         
         for (unsigned int i = 0; i < contents.size(); i++) {
             char* utf8 = *contents[i];
             std::cout << "content " << i << " -- " << utf8 << std::endl;
         }
         memclr(input, 4, 0);
         
     }
     */

     /** 分层二叉树
      */

    struct lbt_node<int>* lbt = lbt_make(127);
    for(int i = 0;i < 128;i ++){
        lbt_node_traverse(lbt,i,0);
    }
    if(lbt) delete lbt;
    return 0;
}