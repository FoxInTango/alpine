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
    char     utf8[] =  "Guten Tag.Ich heiße Dino Botta.";
    wchar_t utf32[] = L"这是一个悲伤的故事";
    Unicode* unicode;
    String s(utf8);
    char* ns = 0;
    s.as(&ns);
    std::cout << "converted : " << ns << std::endl;   
    std::cout << "original  : " << "Guten Tag.Ich heiße Dino Botta."<< std::endl;
    /*
    for (int i = 0; i < 9; i++) {
        std::cout << " utf8   " << i << " : " << std::bitset<8>(utf8[i * 3]) << std::bitset<8>(utf8[i * 3 + 1]) << std::bitset<8>(utf8[i * 3 + 2]) << std::endl;
        std::cout << " utf32  " << i << " : " << std::bitset<32>(utf32[i]) << std::endl;
        std::cout << " unicode" << i << " : " << std::bitset<32>(s.unicode()[i]) << std::endl;
    }
    */
    String let = utf8;
    return 0;
}

/** TODO
 *  Guten Tag. Ich heiße Dino Botta. 比特输出 排查 是由于 std::cout 导致，还是转码问题导致不一致
 *  Guten Tag.Ich heiÇe Dino Botta.
 *  
 */