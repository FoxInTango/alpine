#include "TLSEndpoint.h"
#include <libioevent/libioevent.h>
#include <libmodule/libmodule.h>
#include <libcpp/libcpp.h>


EXTERN_C_BEGIN
namespaceBegin(foxintango)
class TLSStream;
class io_event_tls_engine_implement;
typedef enum _TLS_ENGINE_PATH_TYPE{
    TLS_ENGINE_PATH_KEY_FILE,
    TLS_ENGINE_PATH_CERT_FILE,
    TLS_ENGINE_PATH_CA_STORE
}TLS_ENGINE_PATH_TYPE;
class foxintangoAPI io_event_tls_engine :public IOEngine {
private:
    io_event_tls_engine_implement* implement;
public:
    io_event_tls_engine();
    ~io_event_tls_engine();
public:
    int setPath(const char* path,const TLS_ENGINE_PATH_TYPE& type);
public:
    virtual IOEndpoint* createEndpoint(const Model& model);
    virtual IOEndpoint* createEndpoint(const IOEndpoint& endpoint);
    virtual IOEndpoint* createEndpoint(const char* address, const unsigned short& port, const IOEndpointType& type);

};
namespaceEnd
EXTERN_C_END
