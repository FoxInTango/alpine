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

/*
inline void prefix(const unsigned char* content, unsigned char& prefix) {
    Index o = 0;
    while ((content[o] < 0b11000000) && content[o] && o < 4) {
        if (content[o] < 0b10000000) { break; }
        o++;
}

    switch (o) {
    case 0: { prefix = 0b00000000; }
    case 1: { if (content[o] >= 0b11000000 && content[o] < 0b11100000) prefix = 0b11000000; }break;
    case 2: { if (content[o] >= 0b11100000 && content[o] < 0b11110000) prefix = 0b11100000; }break;
    case 3: { if (content[o] >= 0b11110000) prefix = 0b11110000; }break;
    default:{prefix = 0b11110001; }break;//报错
    }
 }
 */

Size utf8_length(const unsigned char* content) {
    Index index = 0;
    Size  length = 0;
    while (content[index])
    {
        Index segment = content[index] < 0b11000000 ? 1 : (content[index] < 0b11100000 ? 2 : (content[index] < 0b11110000 ? 3 : 4));

        switch (segment) {
        case 1: { index += 1; std::cout << "1 byte." << std::endl;  }break;// 0000 0000 - 0000 007F    0xxxxxxx
        case 2: { index += 2; std::cout << "2 byte." << std::endl;  }break;// 0000 0080 - 0000 07FF    110xxxxx 10xxxxxx
        case 3: { index += 3; std::cout << "3 byte." << std::endl;  }break;// 0000 0800 - 0000 FFFF    1110xxxx 10xxxxxx 10xxxxxx
        case 4: { index += 4; std::cout << "4 byte." << std::endl;  }break;// 0001 0000 - 0010 FFFF    11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
        default:break;
        }

        length++;
    }
    std::cout << "utf8 length : " << length << std::endl;
    return length;
}

Size utf_8_to_32(const unsigned char* utf8, Unicode** utf32) {
    Index index8 = 0;
    Index index32 = 0;

    Size length = utf8_length(utf8);

    (*utf32) = new Unicode[length + 1];
    (*utf32)[length] = 0;

    while (utf8[index8]) {
        unsigned char* unicode = (unsigned char*)&((*utf32)[index32]);
        if (utf8[index8] < 0b10000000) {
            unicode[0] = utf8[index8];
            index8++;
            std::cout << "*" << std::endl;
        }
        else if (utf8[index8] < 0b11100000) { // 110xxxxx 10xxxxxx
            unicode[0] = ((utf8[index8 + 1] << 2) >> 2) | (utf8[index8] << 6);
            unicode[1] = ((utf8[index8] << 3) >> 5);
            index8 += 2;
            std::cout << "**" << std::endl;
        }
        else if (utf8[index8] < 0b11110000) { // 1110xxxx 10xxxxxx 10xxxxxx
            unicode[0] = ((utf8[index8 + 2] << 2) >> 2) | (utf8[index8 + 1] << 6);
            unicode[1] = ((utf8[index8 + 1] << 2) >> 4) | (utf8[index8] << 6);
            unicode[2] = ((utf8[index8] << 6) >> 6);
            index8 += 3;
            std::cout << "***" << std::endl;
        }
        else { // 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
            unicode[0] = ((utf8[index8 + 3] << 2) >> 2) | (utf8[index8 + 2] << 6);
            unicode[1] = ((utf8[index8 + 2] << 2) >> 4) | (utf8[index8 + 1] << 4);
            unicode[3] = ((utf8[index8 + 1] << 2) >> 6) | ((utf8[index8] << 5) >> 3);
            index8 += 4;
            std::cout << "****" << std::endl;
        }

        index32++;
    }

    return length;
}
#ifdef USE_VIRTUAL_METHOD
int Alpine::onevent(int event){ return event; } 
#else
int onevent(const Alpine& alpine, int e) { return e; }
#endif

int main(int argc, char* argv[]) {
/*
    arguments startup_arguments(argc,argv);
    startup_arguments.echo();
    std::cout << "Alpine Init: " << alpine.init(startup_arguments) << std::endl;
#ifdef USE_VIRTUAL_METHOD
    std::cout << "alpine.onevent :" << alpine.onevent(10) << std::endl;
#else
    alpine.onevent = onevent;
    std::cout << "alpine.onevent :" << alpine.onevent(alpine, 10) << std::endl;
#endif 
*/
    char     utf8[] =  "Ѭ ѭ - юсъ большой іотированный/'jus bʌlʲ.'ʃoj jʌ.'tʲi.rə.vən.nɪj/ /ju/ 或 / ʲu/";
    wchar_t utf32[] = L"这是一个悲伤的故事";
    Unicode* unicode;
    String s(utf8);
    char* ns = 0;
    s.as(&ns);
    std::cout << "converted : " << ns << std::endl;    
    /*
    for (int i = 0; i < 9; i++) {
        std::cout << " utf8   " << i << " : " << std::bitset<8>(utf8[i * 3]) << std::bitset<8>(utf8[i * 3 + 1]) << std::bitset<8>(utf8[i * 3 + 2]) << std::endl;
        std::cout << " utf32  " << i << " : " << std::bitset<32>(utf32[i]) << std::endl;
        std::cout << " unicode" << i << " : " << std::bitset<32>(s.unicode()[i]) << std::endl;
    }
    */
    return 0;
}

/** TODO
 *  Guten Tag. Ich heiße Dino Botta. 比特输出 排查 是由于 std::cout 导致，还是转码问题导致不一致
 *  Guten Tag.Ich heiÇe Dino Botta.
 *  
 */