/*
 * libmodule
 *
 * Copyright (C) 2021 FoxInTango <foxintango@yeah.net>
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
#ifndef _MODULE_H_
#define _MODULE_H_

#include "ModuleInterface.h"
#include <libcpp/libcpp.h>

namespace foxintango {

struct ModuleInfomation {
char* version;
char* description;
char* author;
};

class ModuleIMPL;
class foxintangoAPI Module {
public:
    ModuleIMPL* impl;
public:
    typedef enum _MODULE_STATUS
    {
        MS_INTERFACE_MISSED = -2,
        MS_LOAD_FAILED = -1,
        MS_BAD_PATH = 0,
        MS_OK
    } MODULE_STATUS;
public:
    Module();
    Module(const char* path);
   ~Module();
public:
   MODULE_STATUS status();
   ModuleInterface* interface();
};
}
#endif
