#include "host.h"
#include "system.h"
using namespace foxintango;
static System SYSTEM_INSTANCE;
System::System() {
}

System::~System(){
}

const System& System::instance(){
    return SYSTEM_INSTANCE;
}


#if defined(__linux__) || defined(ANDROID) || defined(_ANDROID_)

#endif