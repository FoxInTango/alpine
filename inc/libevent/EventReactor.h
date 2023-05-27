#ifndef _EVENT_REACTOR_H_
#define _EVENT_REACTOR_H_
#include "EventTarget.h"
#include <libcpp/libcpp.h>

namespaceBegin(foxintango)

class EventReactor{
public:
    EventReactor();
    virtual ~EventReactor();
public:
    virtual int boot();
};
namespaceEnd
#endif // !_EVENT_REACTOR_H_
