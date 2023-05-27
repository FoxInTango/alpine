#ifndef _VH_H_foxintango
#define _VH_H_foxintango
#include <libmodel/libmodel.h>
#include <libcpp/libcpp.h>

namespaceBegin(foxintango)
namespaceBegin(vh)

/**
 * network
 * filesystem
 */

class foxintangoAPI VirtualHost{
public:
    VirtualHost();
    VirtualHost(const Model& model);
    ~VirtualHost();
};
namespaceEnd
namespaceEnd
#endif // !_VH_H_foxintango
