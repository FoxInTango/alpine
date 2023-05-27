#ifndef TLS_ENDPOINT_H_
#define TLS_ENDPOINT_H_
#include <libcpp/libcpp.h>
#include <libstream/libstream.h>
#include <libioevent/libioevent.h>

#include <tls.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)

class foxintangoAPI TLSEndpoint :public IOEndpoint
{
public:
    TLSEndpoint();
    virtual ~TLSEndpoint();
public:
    tls* context;
public:
    virtual int handle();
public:
    virtual IOEndpointStatus status();
    virtual int socket() const;
public:
    virtual IOEndpointStatus listen();
    virtual IOEndpointStatus listen(const char* address, const unsigned short port);
    virtual IOEndpointStatus accept();
    virtual IOEndpointStatus connect(const char* address, const unsigned short port, const IOEndpointType& type = IOEndpointType::IOET_LISTEN_TCP);
    virtual IOEndpointStatus send(char* buffer, const unsigned int& length);
    virtual IOEndpointStatus read(char* buffer, const unsigned int& length);
    virtual IOEndpointStatus readable();
    virtual IOEndpointStatus close();
};
namespaceEnd
EXTERN_C_END
#endif
