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
#include <libvk/libvk.h>
#include <libast/libast.h>
#include <libecho/libecho.h>
//#include <libmodel/libmodel.h>
#include <libarguments/libarguments.h>

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

struct screen{
    int cols;
    int rows;
    char* buffer;
    bool  updated;
    uint32_t count;
    uint32_t length;
};

#define ESC_CODE_COLOR_RED
#define ESC_CODE_COLOR_GREEN
#define ESC_CODE_COLOR_BLUE

enum ESC_CODE_INDEX{
    ECI_CURSOR_MOVE_TO,
    ECI_COLOR,
    ECI_NEW_LINE
};

struct termios ori_mode;
struct termios raw_mode;

static bool in_raw_mode = 0;

static struct screen editor_screen;
static struct screen orignal_screen;
static char*  screen_buffer = 0;

int  enableRawMode(int fd){
    if (!isatty(STDIN_FILENO)){
        std::cout << "Not A TTY." << std::endl;
        return -1;
    }
    if (tcgetattr(fd,&ori_mode) == -1){
        std::cout << "Can't Get TerminalOS." << std::endl;
    }
    raw_mode = ori_mode;  /* modify the original mode */
    /* input modes: no break, no CR to NL, no parity check, no strip char,
     * no start/stop output control. */
    raw_mode.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
    /* output modes - disable post processing */
    raw_mode.c_oflag &= ~(OPOST);
    /* control modes - set 8 bit chars */
    raw_mode.c_cflag |= (CS8);
    /* local modes - choing off, canonical off, no extended functions,
     * no signal chars (^Z,^C) */
    raw_mode.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
    /* control chars - set return condition: min number of bytes and timer. */
    raw_mode.c_cc[VMIN] = 0; /* Return each byte, or zero for timeout. */
    raw_mode.c_cc[VTIME] = 1; /* 100 ms timeout (unit is tens of second). */

    /* put terminal in raw mode after flushing */
    if (tcsetattr(fd,TCSAFLUSH,&raw_mode) < 0){
        std::cout << "Failed :tcsetattr(fd,TCSAFLUSH,&raw_mode)" << std::endl;
    }
    
    in_raw_mode = 1;

    return 1;
}

void disableRawMode(int fd){
/* Don't even check the return value as it's too late. */
    if (in_raw_mode) {
        tcsetattr(fd,TCSAFLUSH,&ori_mode);
        in_raw_mode = 0;
    }
}

int initScreen(screen& s){
    struct winsize ws;

    if(ioctl(1, TIOCGWINSZ, &ws) == -1 || ws.ws_col == 0) {
        std::cout << "Failed: ioctl(1, TIOCGWINSZ, &ws) == -1" << std::endl;
        return -1;
    }

    s.cols = ws.ws_col;
    s.rows = ws.ws_row;
    std::cout << "Sreen Cols: " << s.cols << std::endl << "Screen Rows: " << s.rows << std::endl;
    s.length = s.cols * s.rows;
    s.buffer = new char[s.length];
    s.count  = 0;
    s.updated = false;

    screen_buffer = new char[1024];
    /**
     * Clear Screen.
     */
    write(STDOUT_FILENO, "\033[2J\033[H", 7);
    return 1;
}


void flushScreen(){
    if(editor_screen.updated) {
    //write(STDOUT_FILENO,"\x1b[?25l",6);
    //write(STDOUT_FILENO,"\x1b[2J",4);
    write(STDOUT_FILENO,"\x1b[H",3);
    /*
    memset(screen_buffer,0,1024);
    strcat(screen_buffer,"\033[2J\033[H");
    strcat(screen_buffer,"\x1b[H");
    strcat(screen_buffer,editor_screen.buffer);
    */
    write(STDOUT_FILENO,editor_screen.buffer,editor_screen.length);
    //write(STDOUT_FILENO,"\x1b[H",3);
    //write(STDOUT_FILENO,"\x1b[?25l",6);
    editor_screen.updated = false;
    }
}

int readInput(int fd){
    int  nr = 0;
    char c, seq[3];
    nr = read(STDIN_FILENO,&c,1);

    switch(nr){
    case 0:{
        //std::cout << "STDIN_FILENO: " << "Buffer was empty, timeout occurred (100ms) or EOF condition reached " << std::endl;
    }break;
    case 1:{
        //write(STDOUT_FILENO,&c,1);
        //std::cout << "STDIN_FILENO: " << c << std::endl;
        // ESC 
        if(c == 27) {
            exit(0);
        }
        editor_screen.buffer[editor_screen.count] = c;
        editor_screen.count ++;
        editor_screen.updated = true;
    }break;
    case -1:{
        std::cout << "STDIN_FILENO: " << "Error occured." << std::endl;
    }break;
    default:break;
    }

    return nr;
}

void exit_callback(){
    disableRawMode(STDIN_FILENO);
}

int main(int argc,char* argv[]) {
    atexit(exit_callback);
    arguments startup_arguments(argc, argv);
    startup_arguments.echo();
    /** 
    alpine.init(startup_arguments);
    char* w = "fähigkeit";
    printf("germany : %s\n",w);
    libcpp_startup();
    */

    /*
    VKApplication vkApp;
    vkApp.enumeratePhysicalDevices();
    vkApp.enumerateDisplays();
    */
    initScreen(editor_screen);
    enableRawMode(STDIN_FILENO);
    while(true) {
        flushScreen();
        readInput(STDIN_FILENO);
    }
    disableRawMode(STDIN_FILENO);
    return 0;
}

