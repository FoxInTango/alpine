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

#include <libcpp/libcpp.h>
#include <libsystem/libsystem.h>
#include <signal.h>
#include <sched.h>

void exit_callback_1() {
printf("exit_callback[1]\n");
}

void exit_callback_2() {
printf("exit_callback[2]\n");
}

void exit_callback_3() {
printf("exit_callback[3]\n");
}
void deal_signal(int signal){
}

Alpine alpine;

Alpine::Alpine(){

}
Alpine::~Alpine(){}
int Alpine::handleEvent(Event* e) { delete e; return 0; }
int Alpine::init(const foxintango::arguments& args){ return 0; }
int Alpine::init(const ASTElement& model){
    unsigned int size_of_alpine = sizeof(Alpine);
    atexit(exit_callback_1);
    atexit(exit_callback_2);
    atexit(exit_callback_3);
/** signal(SIGINT,deal_signal);
    signal(SIGABRT,deal_signal);
    signal(SIGFPE,deal_signal);
    signal(SIGILL,deal_signal);
    signal(SIGTERM,deal_signal);
    signal(0, deal_signal);
*/
    std::cout << "Alpine::init: " << std::endl;    
    //EventEndpoint e; //EventEndpoint();
    EventReactorCreateInfo info;
    info.BufferSize = 1024;
    info.EventCount = 1024;
    info.ThreadCount = 16;
    this->er = new EventReactor(info);
    //Model alpine_startup_model;
    //const ME* libes_startup_model = alpine_startup_model.subelementAt("es");
    //const ME* libioevent_startup_model = alpine_startup_model.subelementAt("io");
    //const ME* libfsevent_startup_model = alpine_startup_model.subelementAt("fs");
    
    
    libes_init();
    this->es = new ESContext();
    //libioevent_startup(*libioevent_startup_model);
    //libfsevent_startup(*libfsevent_startup_model);
    
    
    if(this->es){
        //this->es->load_language_module(this->system->currentPath() + "../lib/modules/es_language_js.so");
    }

    return 0;
}

int Alpine::clone(){
    return 0;
}

int Alpine::watch(const char* path){
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
