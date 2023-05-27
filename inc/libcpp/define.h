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
#ifndef _DEFINE_H_
#define _DEFINE_H_

#define namespaceBegin(name) namespace name {
#define namespaceEnd }

namespaceBegin(foxintango)

/** EXTERN C
 * */
#ifdef __cplusplus
#define EXTERN_C_BEGIN extern "C" {
#define EXTERN_C_END   }

#define EXTERN_C extern "C"
#endif 

/** Platform 
 * */
#if defined(WIN32) || defined(_WIN32) || defined(_WIN32_) || defined(WIN64) || defined(_WIN64) || defined(_WIN64_)
    #ifdef foxintangoEXPORT
        #define foxintangoAPI __declspec(dllexport)
    #else
        #define foxintangoAPI __declspec(dllimport)
    #endif
#elif defined(ANDROID) || defined(_ANDROID_)
    #define foxintangoAPI __attribute__ ((visibility("default")))
#elif defined(__linux__)
    #define foxintangoAPI __attribute__ ((visibility("default")))
#elif defined(__APPLE__) || defined(TARGET_OS_IPHONE) || defined(TARGET_IPHONE_SIMULATOR) || defined(TARGET_OS_MAC)
    #define foxintangoAPI __attribute__ ((visibility("default")))
#else
    #define foxintangoAPI
#endif

/** 源码宏
 *  __FILE__
 *  __LINE__
 *  __FUNCTION__
 *  __PRETTY_FUNCTION__  namespace::classname::functionname
 * */
namespaceEnd
#endif
