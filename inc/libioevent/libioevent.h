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
#ifndef _LIB_IO_EVENT_H_
#define _LIB_IO_EVENT_H_

#include "IOEngine.h"
#include "IOEndpoint.h"
#include "IOEvent.h"
#include "IOHandler.h"
#include "IOSession.h"

#include <libmodule/libmodule.h>
#include <libmodel/libmodel.h>
#include <libcpp/libcpp.h>
using namespace foxintango;

/*
struct libioevent_model_s {
    struct struct_header_s header;
    char* name;
    char* engines;
    char* handlers;
    struct io_event_endpoint_model_s* endpoint_models;
};
*/
#ifdef __cplusplus
extern "C" {
#endif

/** Load IOEngine   Modules
 *  Load IOBusiness Modules
 * */
int foxintangoAPI libioevent_startup(const Model& model);
int foxintangoAPI libioevent_reload(const Model& model);
int foxintangoAPI libioevent_shutdown();

#ifdef __cplusplus
}
#endif
#endif
