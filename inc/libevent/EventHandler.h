#ifndef _EVENT_HANDLER_H_
#define _EVENT_HANDLER_H_
#include "Event.h"
#include <libcpp/libcpp.h>

namespaceBegin(foxintango)

class foxintangoAPI EventHandler {
public:
    EventHandler();
    virtual ~EventHandler();
public:
    virtual int onevent(Event* e);
};
namespaceEnd
#endif // !_EVENT_HANDLER_H_
