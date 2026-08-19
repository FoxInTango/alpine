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
#include <libui/libui.h>
#include <libvk/libvk.h>
#include <libwl/libwl.h>
#include <libast/libast.h>
#include <libecho/libecho.h>
//#include <libmodel/libmodel.h>
#include <libarguments/libarguments.h>
#include <libcry/libcry.h>

#include <stdio.h>
#include <iostream>
#include <stdlib.h>
/** Editor */
#include <termios.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <stdarg.h>
#include <fcntl.h>
#include <signal.h>
using namespace foxintango;
void exit_callback(){
    printf("exit_callback.\n");
}
int main(int argc,char* argv[]) {
    atexit(exit_callback);
    arguments startup_arguments(argc, argv);
    startup_arguments.echo();
    //alpine.init(startup_arguments);
    ASTElement alpine_model;
    //alpine.init(alpine_model);
    char* w = "fähigkeit";
    printf("germany : %s\n",w);

    libcpp_startup();
    

    /** libvk **/
    VKApplication vkApp;
    vkApp.enumeratePhysicalDevices();
    vkApp.enumerateDisplays();
    VKSurface* surface = new VKSurface(100,100,0);
    sleep(10);
//    delete surface;    
/**/

    /*** libui 
    */

    UIApplication uiApp;
    WLApplication wl;
    wl.launch(argc,argv);
    

    /*** libcry */
    std::cout << "md5 of 'grape': " << md5("MD5（Message Digest Algorithm 5）是一种广泛使用的哈希函数，它将任意长度的输入消息映射为 128（16个字符(BYTES)）位的固定长度散列值。") << std::endl;
    //sleep(10);
    return 0;
}

