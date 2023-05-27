/**
 * String :: from char short int long etc .
 * 
 * 拼接,剪切
 */
#ifndef _STRING_H_foxintango
#define _STRING_H_foxintango
#include <libcpp/libcpp.h>

namespaceBegin(foxintango)

class foxintangoAPI String {
public:
    String();
    String(const char* string);
    String(const char& number);
    String(const unsigned char& number);
    String(const short& number);
    String(const unsigned short& number);
    String(const int& number);
    String(const unsigned int& number);
    String(const float& number);
    String(const long& number);
    String(const double& number);
    virtual ~String();
public:
    operator char();
    operator unsigned char();
    operator short();
    operator unsigned short();
    operator int();
    operator unsigned int();
    operator float();
    operator long();
    operator double();
public:
    const char* byte();
};
namespaceEnd
#endif // !_EVENT_TARGET_H_