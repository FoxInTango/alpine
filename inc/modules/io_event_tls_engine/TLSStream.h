#ifndef TLS_STREAM_H_
#define TLS_STREAM_H_
#include <libcpp/libcpp.h>
#include <libstream/libstream.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)

class foxintangoAPI TLSStream :public Stream
{
public:
    TLSStream();
    virtual ~TLSStream();
public:
    virtual bool readable();
    virtual int read(const char* buffer, const unsigned int& size);
    virtual int write(const char* buffer, const unsigned int& size);
};
namespaceEnd
EXTERN_C_END
#endif
