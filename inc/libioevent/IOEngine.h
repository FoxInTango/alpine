/*
 * libioevent
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
#ifndef _IO_ENGINE_H_
#define _IO_ENGINE_H_
#include "IOEndpoint.h"
#include <libcpp/libcpp.h>
EXTERN_C_BEGIN
namespaceBegin(foxintango)
struct io_engine_model_s {

};
class foxintangoAPI IOEngine {
public:
    static IOEngine* engineWithName(char* name);
    static unsigned int appendWithName(IOEngine* engine,char* name);
public:
    IOEngine();
    virtual ~IOEngine();
public:
    virtual IOEndpoint* createEndpoint(const Model& model) = 0;
    virtual IOEndpoint* createEndpoint(const char* address,const unsigned short& port,const IOEndpointType& type) = 0;
};
namespaceEnd
EXTERN_C_END
#endif
