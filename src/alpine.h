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
#ifndef _alpine_h_
#define _alpine_h_

#include <libes/libes.h>
#include <libmodel/libmodel.h>
#include <libarguments/libarguments.h>
//#include <libfsevent/libfsevent.h>
//#include <libioevent/libioevent.h>
/**
 * alpine:
 * a:"",
 * b:20200,
 * b:[],
 * c:{}
 */

struct alpine_config {
  char *nginxPath;
};

class Alpine {
public:
    Alpine();
    ~Alpine();
public:
    int init(const foxintango::arguments& args);
    int watch(const int& fd, const char* option = 0);
    int watch(const char* path, const char* option = 0);
    /**
     * url:fs|fss://./index.sock
     *     ip|ips://192.168.0.1:80
     *     http|https://
     *     ws|wss://
     */
    int connect(const char* url);
};

extern "C" Alpine alpine;

#endif

#ifndef  _alpine_config_h_
#define  _alpine_config_h_

#define ALPINE_model_path_default "/etc/alpine" // mo | so | json | xml

#endif
