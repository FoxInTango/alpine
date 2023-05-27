#ifndef _LIB_EVENT_H_
#define _LIB_EVENT_H_

#include "Event.h"
#include "EventTarget.h"
#include "EventReactor.h"
#include "EventHandler.h"
#include "EventSession.h"

#include <libmodule/libmodule.h>
#include <libmodel/libmodel.h>
#include <libcpp/libcpp.h>
using namespace foxintango;

/*
 struct libevent_model_s {
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

    int foxintangoAPI libevent_startup(const Model& model);
    int foxintangoAPI libevent_reload(const Model& model);
    int foxintangoAPI libevent_shutdown();

    int foxintangoAPI libevent_listen(EventTarget* target);
    int foxintangoAPI libevent_discard(EventTarget* target);

#ifdef __cplusplus
}
#endif

#endif // !_LIB_EVENT_H_