#ifndef _MM_ALLOCATOR_H_foxintango
#define _MM_ALLOCATOR_H_foxintango

#include <libcpp/libcpp.h>

namespaceBegin(foxintango)
namespaceBegin(mm)
class foxintangoAPI Allocator{
public:
    Allocator();
    virtual ~Allocator();
public:
    virtual void* alloc(const unsigned int& size);
    virtual int release(const void* address);
};
namespaceEnd
namespaceEnd
#endif // !_MM_ALLOCTOR_H_foxintango
