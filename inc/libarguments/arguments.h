/*
 * libarguments
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
#ifndef _ARGUMENTS_H_
#define _ARGUMENTS_H_
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespace foxintango {
class argumentIMPL;
class foxintangoAPI argument {
public:
    argumentIMPL* impl;
public:
    argument();
    argument(const argument& arg);
   ~argument();
public:
    void echo();
    bool empty() const;
    unsigned int count() const;
public:
    const char* valueAt(const unsigned int& index);
public:
    const char* operator [](const unsigned int& index);
};
class argumentsIMPL;
class foxintangoAPI arguments {
public:
    argumentsIMPL* impl;
public:
    arguments(const int& count,char** content);
   ~arguments();
public:
    void  echo();
    bool  contain(const char* name) const;
    const argument& at(const char* name) const;
    const char* at(const unsigned int& index);
    unsigned int namedCount();
    unsigned int standaloneCount();
public:
    const argument& operator [](const char* name);
    const char*     operator [](const unsigned int& index);
};
}
EXTERN_C_END
#endif
