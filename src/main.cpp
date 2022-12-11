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
 */
#include <stdio.h>  
#include <string.h>  
#include <stdlib.h>  
#include <sys/inotify.h>  
#include <unistd.h>  
#include <iostream>
#include <sys/stat.h>
#include <dirent.h>
#include <fstream>
#include <codecvt>
#include <iostream>
#include <string>
#include <cstring>
#include <cassert>
#include <locale>

#include "libfsevent.h"
#include "libes/src/es_document.h"

int main(int argc, char* argv[])
{
    //std::ios::sync_with_stdio(true);
    //std::locale::global(std::locale("zh_CN"));
    //std::wcout.imbue(std::locale("zh_CN") );
    setlocale(LC_ALL,"chs");
    std::cout << "这里是中文." << std::endl;
    std::wstring wline = std::wstring_convert<std::codecvt_utf8<wchar_t>>{}.from_bytes("nice to meet you");
    std::wcout << "wline : " << wline << std::endl;
    std::wcout << "sizeof wline[2] : " << sizeof(wline[2]) << std::endl;
    if(wline[1] == L'常')
        std::wcout << "m" << std::endl;
    std::wcout << "sizeof wchar_t : " << sizeof(wchar_t) << std::endl;
    std::wcout << "sizeof L'l'" << sizeof(L'l') << std::endl;
    std::wcout << "sizeof L\"l\"" << sizeof(L"") << std::endl;
    std::wcout << L"main" << "  FILE : " << __FILE__ <<  "  LINE : " << __LINE__ << "  FUNCTION : " << __FUNCTION__ <<std::endl;
    for(int i = 0;i < argc;i ++) {
        std::wcout << L"argument " << i << L" " << argv[i] << std::endl;
    }
    char* path = argv[1];
    es_document doc;
    return doc.load(path);
}
