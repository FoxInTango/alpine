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
 * 
 * 当我来到这个世界的时候，他们就在瞎胡闹。于是，我以为人生就是跟他们一样，跟他们一起，瞎胡闹。
 * 后来，我意识到生命的意义并不在于瞎胡闹。所以，我不想继续瞎胡闹了，但他们似乎并不允许有人不瞎胡闹 -- 他们用各种方式诱惑，逼迫别人跟他们一起瞎胡闹。
 */
#include "alpine.h"
#include <libelf/libelf.h>
#include <libast/libast.h>
#include <libecho/libecho.h>
#include <libmodel/libmodel.h>
#include <libarguments/libarguments.h>

#include <stdio.h>
#include <iostream>
#include <stdlib.h>
using namespace foxintango;
int main(int argc, char* argv[]) {
    arguments startup_arguments(argc,argv);
    startup_arguments.echo();
    alpine.init(startup_arguments);
    switch(CurrentEndian()){
        case ENDIAN_B:{
            printf("CurrentEndian: Big Endian\n");
        }break;
        case ENDIAN_L:{
            printf("CurrentEndian: Little Endian\n");
        }break;
        default:break;
    }

    ELFFile elf;
    ME me("../elf/out/app.exe");
    char* path; 
    path = "../elf/arm32/liba/share.o";
    int r = elf.open(path);
    path = "../elf/arm32/out/liba.so";
    path = "./lib/libcpp.so";
    r = elf.open(path);
    return 0;
}