#ifndef _EVENT_H_
#define _EVENT_H_
class ev_session;
typedef struct _ev_event {
    ev_session* session;
}ev_event;
//int (*ev_event_callback)(ev_event* event);
#include <libmodel/libmodel.h>
#include <libcpp/libcpp.h>

namespaceBegin(foxintango)

class EventHandler;
class EventSession;
class foxintangoAPI Event {
private:
    Model* entity;
    EventHandler* handler;
    EventSession* session;
public:
    Event();
    virtual ~Event();
public:
    /**
     * type of event -- hash code from class info 
     */
    virtual unsigned int type();
};
namespaceEnd
#endif // !_EVENT_HANDLER_H_
