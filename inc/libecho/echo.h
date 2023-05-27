/** MIT License

Copyright(c) 2022 FoxInTango <foxintango@yeah.net>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this softwareand associated documentation files(the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and /or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions :

The above copyright noticeand this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
#ifndef _ECHO_H_foxintango
#define _ECHO_H_foxintango

#include "view.h"
#include "node.h"
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)
namespaceBegin(echo)
struct Color {
    unsigned char r,g,b,a;
};

struct Alignment {

};

class foxintangoAPI Target {
public:
    Target();
    virtual ~Target();
};

class foxintangoAPI Format {

};

class foxintangoAPI Range :public Target {
public:
    Range();
   ~Range();
};

class foxintangoAPI VoidTarget :public Target {
public:
    VoidTarget();
   ~VoidTarget();
};

class foxintangoAPI FileTarget :public Target {
public:
    FileTarget();
   ~FileTarget();
};

class foxintangoAPI ScreenTarget :public Target {
public:
    ScreenTarget();
   ~ScreenTarget();
public:
    void clear();
};

typedef ScreenTarget s;

//extern 

namespaceEnd
namespaceEnd
EXTERN_C_END
#endif
