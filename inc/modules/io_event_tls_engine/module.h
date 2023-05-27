#include <libmodule/libmodule.h>
#include <libmodel/libmodel.h>
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespace foxintango {

class foxintangoAPI io_event_tls_engine_Interface :public ModuleInterface {
public:
    io_event_tls_engine_Interface();
    virtual ~io_event_tls_engine_Interface();
public:
    virtual bool  containClass(const char* name);
    virtual void* createObject(const char* name,const Model& model=Model());

    virtual bool  containFunction(const char* name);
    virtual void* exportFunction(const char* name);

    virtual bool containVariable(const char* name);
    virtual void* exportVariable(const char* name);
};
}
EXTERN_C_END
