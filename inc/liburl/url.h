#ifndef _URL_H_foxintango
#define _URL_H_foxintango

#include <libstring/libstring.h>
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)

class foxintangoAPI URL {

public:
    /** 定位符类型
     *  
     * */
    enum URL_PROTOCOL {
        FS,
        IP,
        HTTP,
        HTTPS,
        WS,
        WSS
    };
    /** 资源类型
     * */
public:
    URL();
    URL(const String& url);
    ~URL();
};

namespaceEnd
EXTERN_C_END
#endif
