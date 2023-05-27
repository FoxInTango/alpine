#ifndef _MIT_DOCUMENT_H_foxintango
#define _MIT_DOCUMENT_H_foxintango
#include "mit.h"
#include <liburl/liburl.h>
#include <libstring/libstring.h>
#include <libcpp/libcpp.h>

EXTERN_C_BEGIN
namespaceBegin(foxintango)
class mit_document_implement;
class foxintangoAPI mit_document {
private:
    struct mit_toolchain_s toolchain;
    struct mit_target_s* targets;
    mit_document_implement* implement;
public:
    mit_document(const URL& url);
    ~mit_document();
public:
    int load(const URL& url);
public:
    int execute();
};
namespaceEnd
EXTERN_C_END
#endif
