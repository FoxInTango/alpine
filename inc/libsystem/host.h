#ifndef _SYSTEM_HOST_H_foxintango
#define _SYSTEM_HOST_H_foxintango
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)
/** Host Informations
 *  Host name
 *  Host aliases
 *  Host addresses ipv4/ipv6
 *
 * */
class foxintangoAPI Host {
public:
    static Host* instance();
public:
    Host();
    ~Host();
};
namespaceEnd
EXTERN_C_END
#endif
