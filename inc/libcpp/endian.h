/*
 * libcpp
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
#ifndef _ENDIAN_H_
#define _ENDIAN_H_

#include "define.h"
#include <stdint.h>

namespaceBegin(foxintango)

#define ENDIAN_L 0
#define ENDIAN_B 1

inline int endianType() {
    unsigned short v = 0x0001;
    unsigned char  c = ((unsigned char*)&v)[0];

    return c == 1 ? ENDIAN_B : ENDIAN_L;
}

inline int16_t endianSwap16(const int16_t& value) 
{
        return (value << 8) | ((value >> 8) & 0xFF);
}

inline uint16_t endianSwap16u(const uint16_t& value) {
    return value << 8 | value >> 8;
}

inline int32_t  endianSwap32(const int32_t& value)
{
    int32_t v = ((value << 8) & 0xFF00FF00) | ((value >> 8) & 0xFF00FF);
    return (v << 16) | ((v >> 16) & 0xFFFF);
}

inline uint32_t endianSwap32u(const uint32_t& value) {
    return ((value >> 24) & 0xff)     |   // byte 3 to byte 0
           ((value <<  8) & 0xff0000) |   // byte 1 to byte 2
           ((value >>  8) & 0xff00)   |   // byte 2 to byte 1
           ((value << 24) & 0xff000000);  // byte 0 to byte 3
}

inline int64_t endianSwap64(const int64_t& value)
{
    int64_t v;
    v = ((value <<  8) & 0xFF00FF00FF00FF00ULL) | ((value >>  8) & 0x00FF00FF00FF00FFULL);
    v = ((v     << 16) & 0xFFFF0000FFFF0000ULL) | ((v     >> 16) & 0x0000FFFF0000FFFFULL);
    return (v << 32) | ((v >> 32) & 0xFFFFFFFFULL);
}

inline uint64_t endianSwap64u(const uint64_t& value)
{
    uint64_t v;
    v = ((value <<  8) & 0xFF00FF00FF00FF00ULL) | ((value >>  8) & 0x00FF00FF00FF00FFULL);
    v = ((v     << 16) & 0xFFFF0000FFFF0000ULL) | ((v     >> 16) & 0x0000FFFF0000FFFFULL);
    return (v << 32) | (v >> 32);
}

namespaceEnd

#endif
