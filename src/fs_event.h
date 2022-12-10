#ifndef _fs_event_h_
#define _fs_event_h_
class fs_event;
typedef void (*fs_event_callback)(const fs_event&);
class fs_event{
private:
    void* implement;
public:
    fs_event();
    ~fs_event();
public:
const char* name();
};
#endif
