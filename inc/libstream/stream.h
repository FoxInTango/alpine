#ifndef _STREAM_H_
#define _STREAM_H_
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)

class foxintangoAPI Stream
{
public:
    Stream();
    virtual ~Stream();
public:
    virtual bool readable();
    virtual bool writeable();
    virtual int read(const char* buffer,const unsigned int& size);
    virtual int write(const char* buffer,const unsigned int& size);
};
namespaceEnd
EXTERN_C_END
#endif
