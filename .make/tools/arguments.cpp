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

#include "arguments.h"
using namespace foxintango;
#include <string.h>
#include <string>
#include <iostream>
#include <map>
#include <vector>

namespaceBegin(foxintango)
class argumentIMPL {
public:
    std::string name;
    std::vector<std::string> values;
public:
    argumentIMPL() {
    }
    ~argumentIMPL() {
    }
};

argument::argument()  { this->impl = new argumentIMPL();  }
argument::argument(const argument& arg) {
    this->impl = new argumentIMPL();
    this->impl->name   = arg.impl->name;
    this->impl->values = arg.impl->values;
}
argument::~argument() { if(this->impl) delete this->impl; }

void argument::echo() {
    if(!this->impl) std::cout << "bad argument." << std::endl;

    std::cout << "Argument : " << this->impl->name << std::endl;

    for(unsigned int i = 0;i < this->impl->values.size();i ++) {
        std::cout << "    value AT " << i << " : " << this->impl->values[i] << std::endl;
    }
}

bool argument::empty() const {
    return this->impl ?  this->impl->values.size() : 0;
}

unsigned int argument::count() const {
    return this->impl ? this->impl->values.size() : 0;
}

const char* argument::valueAt(const unsigned int& index) {
    return this->impl && index < this->impl->values.size() ? this->impl->values.at(index).c_str() : 0;
}

const char* argument::operator [](const unsigned int& index) {
    return valueAt(index);
}

class argumentsIMPL {
public:
    std::vector<std::string> standalones;
    std::map<std::string,argument> argumentMap;
public:
    argumentsIMPL() {}
    ~argumentsIMPL() {}
};
arguments::arguments(const int& count,char** content) {
    this->impl = new argumentsIMPL();
    if(this->impl && count && content) {
        int i = 0;// 参数偏移量
        int o = 1;// 参数值偏移量
        
        while(i < count) {
            char* param = content[i];
            if('-' == param[0] && strlen(param) > 1) break;
            std::string arg(&param[0]);
            this->impl->standalones.push_back(arg);
            i ++;
        }

        while(i < count) {
            char* param = content[i];
            std::cout << "parse i : " << i << std::endl;
            if('-' == param[0] && strlen(param) > 1) {
                argument arg;
                arg.impl->name += &param[1];
                o = 1;
                while(i + o < count) {
                    param = content[i + o];
                    std::cout << "parse o : " << o << std::endl;
                    if('-' == param[0]) {
                        break;
                    } else {
                        std::string value(content[i + o]);
                        arg.impl->values.push_back(value);
                        o ++;
                    }
                }
                this->impl->argumentMap.insert(std::pair<std::string,argument>(arg.impl->name,arg));
            }
            i += o;
            o  = 1;
        }
    }
}

arguments::~arguments() { if(this->impl) delete this->impl; }

argument INSTANCE_ARGUMENT_EMPTY_DEFAULT;

void arguments::echo() {
    unsigned int index = 0;
    while(this->impl->standalones.begin() + index !=  this->impl->standalones.end()) {
        
        std::cout << "Arguments::Standalones " << index << " : " << this->impl->standalones[index] << std::endl;
        index ++;
    }
    auto iter = this->impl->argumentMap.begin();
    while(iter !=  this->impl->argumentMap.end()) {
        (*iter).second.echo();
          iter ++;
    }
}

bool arguments::contain(const char* name) const {
    if(this->impl && this->impl->argumentMap.count(name)) return true;
    return false;
}

const argument& arguments::at(const char* name) const {
    if(contain(name)) {
        return this->impl->argumentMap.at(name);
    }
    return INSTANCE_ARGUMENT_EMPTY_DEFAULT;;
}

const char* arguments::at(const unsigned int& index) {
    return this->impl && index < this->impl->standalones.size() ? this->impl->standalones[index].c_str() : 0;
}

const argument& arguments::operator [](const char* name) {
    return at(name);
}

const char* arguments::operator [](const unsigned int& index) {
    return at(index);
}

namespaceEnd
