#ifndef _MIT_H_foxintango
#define _MIT_H_foxintango

#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)

struct mit_action_s {
    
};
struct mit_toolchain_s {
    char* description;
    char* prefix;
    char* as;
    char* cc;
    char* pp;
    char* ar;
    char* ld;
};

struct mit_target_s {
    
};

struct mit_model_s {
    struct mit_toolchain_s toolchain;
    struct mit_target_s* targets;
};

namespaceEnd
EXTERN_C_END
#endif
