#ifndef _SYSTEM_H_foxintango
#define _SYSTEM_H_foxintango

#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)
class foxintangoAPI System {
public:
    class foxintangoAPI Kernel {
    public:
        const char* name();
        const char* version();
    };
private:
    int startup();
public:
    static const System& instance();
public:
    System();
    ~System();
public:
    const char* name();
    const char* version();
    const char* staticLibext();
    const char* dynamicLibext();
public:
    Kernel* kernel();
    int pid();
    int tid();
    int shell(const char* shell,...);
};

// SYSCALL & HOOK
// NETWORK
// FS & EVENT
namespaceEnd
EXTERN_C_END
#endif
