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

    

    Array<unsigned int> array(8);
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
     for(unsigned int i = 0;i < 40960;i ++){
         array.append(i);
     }

     for(unsigned int i = 0;i < 4096;i ++){
         array.insert(20230603,i * 10);
     }
     /*
     for (int i = 0; i < array.size(); i++) {
         std::cout << "Array Element " << i << " : " << array[i] << std::endl;
     }
     */
     /*
     for(unsigned int i = 0;i < 4096;i ++){
         if(array[i * 10] == 20230603){
             std::cout << "index " << i * 10 << " equal with 20230603." << std::endl; 
         } else std::cout << "index " << i * 10 << " missed with number  : " << array[i * 10] << std::endl;
     }

     std::cout << "Array size " << array.size() * sizeof(unsigned int) << std::endl;
     */

     printf("************************* \n");
     printf("\033[0;30;41m color!!! \033[0m Hello \n");
     printf("\033[1;30;41m color!!! \033[0m Hello \n");
     printf("\033[4;30;41m color!!! \033[0m Hello \n");
     printf("\033[5;30;41m color!!! \033[0m Hello \n");
     printf("\033[7;30;41m color!!! \033[0m Hello \n");
     printf("\033[8;30;41m color!!! \033[0m Hello \n");


     printf("************************* \n");
     printf("\033[0;30;41m color!!! \033[0m Hello \n");
     printf("\033[0;31;41m color!!! \033[0m Hello \n");
     printf("\033[0;32;41m color!!! \033[0m Hello \n");
     printf("\033[0;33;41m color!!! \033[0m Hello \n");
     printf("\033[0;34;41m color!!! \033[0m Hello \n");
     printf("\033[0;35;41m color!!! \033[0m Hello \n");
     printf("\033[0;36;41m color!!! \033[0m Hello \n");
     printf("\033[0;37;41m color!!! \033[0m Hello \n");

     printf("************************* \n");
     printf("\033[0;30;40m color!!! \033[0m Hello \n");
     printf("\033[0;30;41m color!!! \033[0m Hello \n");
     printf("\033[0;30;42m color!!! \033[0m Hello \n");
     printf("\033[0;30;43m color!!! \033[0m Hello \n");
     printf("\033[0;30;44m color!!! \033[0m Hello \n");
     printf("\033[0;30;45m color!!! \033[0m Hello \n");
     printf("\033[0;30;46m color!!! \033[0m Hello \n");
     printf("\033[0;30;47m color!!! \033[0m Hello \n");
#include <fstream>
     std::ifstream input_stream("input");
     std::cin.rdbuf(input_stream.rdbuf);
     char input[128];
     memclr(input,128,0);
     while(std::cin >> input){
         std::cout << "输入内容: " << input << std::endl;
         if(input[0] == 'q') {
         std::cin.rdbuf(std::cin);
         input_stream.close();

         break;
         }
         memclr(input, 128, 0);
     }
    return 0;
}

