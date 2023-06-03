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
 00000000 00000000 01010011 11100100
    */
    /*
    unsigned char p = 255;

    int uc = '1';
    unsigned char* up = (unsigned char*)&uc;
    prefix((unsigned char*)&uc, p);
    std::cout << uc << "prefix : " << std::bitset<8>(p) << std::endl;
    std::cout << "古0 : " << std::bitset<8>(up[0]) << std::endl;
    std::cout << "古1 : " << std::bitset<8>(up[1]) << std::endl;
    std::cout << "古2 : " << std::bitset<8>(up[2]) << std::endl;
    std::cout << "古3 : " << std::bitset<8>(up[3]) << std::endl;
    */
    unsigned char p = 255;
    char* utf = "It's a sad story.";
   
    String s(utf);
    char* ns = 0;
    std::cout << "string length : " << s.length() << std::endl;
    std::cout << "unicode " << s.unicode() << std::endl;
    s.as(&ns);
    std::cout << "converted utf : " << ns << std::endl;
    return 0;
}
