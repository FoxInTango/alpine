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
#include "alpine.h"
#include <signal.h>
#include <sched.h>

void deal_signal(int signal){

}

Alpine alpine;

Alpine::Alpine(){}
Alpine::~Alpine(){}

int Alpine::init(const foxintango::arguments& args){
    signal(0, deal_signal);
    return 0;
    libes_init();
    foxintango::es_document doc;
    return doc.load(ALPINE_model_path_default);
}

int Alpine::clone(){
    return 0;
}

int Alpine::watch(const int& fd, const foxintango::Model& option){
    return 0;
}

int Alpine::watch(const char* path, const foxintango::Model& option){
    return 0;
}

int Alpine::connect(const char* url){
    return 0;
}
/**
 * /dev/shm/alpine
 *
 */

 /*
 int alpine_watch(char *path, const fs_event *event, fs_event_callback handler,const int &depth = 0);
 void alpine_fs_event_handler(const fs_event& event);
 */
