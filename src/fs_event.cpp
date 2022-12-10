#include "fs_event.h"
#include <string>
typedef struct _fs_event_implement{
   std::string name;
}fs_event_implement;

fs_event::fs_event(){
    implement = new fs_event_implement();
}

fs_event::~fs_event(){
    if(implement) delete implement;
}

const char* fs_event::name(){
    return implement ?  ((fs_event_implement*)implement)->name.c_str() : 0;
}


