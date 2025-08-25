#ifndef _SYSTEM_H_foxintango
#define _SYSTEM_H_foxintango
#include <libkernel/libkernel.h>
#include <libstring/libstring.h>
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)
class foxintangoAPI System {
private:
    int startup();
public:
    static const System& instance();
public:
    System();
    ~System();
public:
    String name();
    String version();
    String staticLibext();
    String dynamicLibext();
public:
    Kernel* kernel();
    int pid();
    int tid();
    int uid();
    int gid();
    int shell(const char* shell,...);
    String user();
    String group();
    String currentPath();//getcwd
};

// SYSCALL & HOOK
// NETWORK
// FS & EVENT
namespaceEnd
EXTERN_C_END
#endif
