#ifndef _LIB_CPP_MEMEORY_H_foxintango
#define _LIB_CPP_MEMEORY_H_foxintango
#include "define.h"

EXTERN_C_BEGIN
namespaceBegin(foxintango)
/*
void* memnew(const unsigned int& size) {
    return new char[size];
}
void  memdel(void* p) {
    delete[] (char*)p;
}


inline void  memcpy(void* s,void* t,const unsigned int& size) {

}
*/
inline void memclr(void* target,const unsigned int& length,const char& value = 0) {
    if(target) {
        for(unsigned int i = 0;i < length;i ++) {
           ((char*)target)[i] = value;
        }
    }
}

namespaceEnd
EXTERN_C_END
#endif
