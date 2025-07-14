#ifndef _MIT_ELEMENT_H_
#define _MIT_ELEMENT_H_
#include <map>
#include <vector>
#include <string>
#include <string.h>
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>

class mit_context;
class mit_token {
    std::string val;
public:
    mit_token();
    mit_token(const std::string& value);
    ~mit_token();
public:
    const std::string& value();
    size_t hash() const;
public:
    static const mit_token& mit_eof();
};

class mit_token_stream : public std::vector<mit_token>
{
public:
};
class mit_element {
public:
    std::string element_type;
public:
    mit_element* super_element;
    std::vector<mit_element*> subelements;
public:
    mit_element();
    virtual ~mit_element();
public:
    virtual std::string elementType();
    virtual bool isMeta();
    virtual bool isOperator();
    virtual bool isFunction();
    virtual bool isClass();
    virtual mit_element* super();
    virtual mit_element* elementAt(const std::string& name);
public:
    virtual mit_element& operator = (const mit_element* e);
    virtual mit_element& operator = (const mit_element& e);
    virtual bool operator == (const mit_element* e) const;
    virtual bool operator == (const mit_element& e) const;
public:
    virtual int  execute(const mit_context* context);
public:
    int flow(const mit_context* context);
};
// ?????? | ????ʱ ָ??
class mit_import :public mit_element {};
class mit_as :public mit_element {};
class mit_export :public mit_element {};
// Ԫ????
class mit_bool :public mit_element {};
class mit_string :public mit_element {};
class mit_number :public mit_element {};
class mit_array :public mit_element {};
class mit_map :public mit_element {};
// ��??
// ?첽 
/**
 (async () =>
    {
        const module = await import('/modules/module.js');
    })();

 promise
 */
 // ??????
class mit_operator :public mit_element {};
class mit_operator_unary :public mit_operator {};
class mit_operator_binary :public mit_operator {};
class mit_operator_ternary :public mit_operator {};

// ??ֵ??????
class mit_assign :public mit_operator_binary {};
class mit_add_assign :public mit_operator_binary {};
class mit_sub_assign :public mit_operator_binary {};
class mit_mul_assign :public mit_operator_binary {};
class mit_div_assign :public mit_operator_binary {};
class mit_mod_assign :public mit_operator_binary {};

// ??ѧ??????
class mit_add :public mit_operator_binary {};
class mit_sub :public mit_operator_binary {};
class mit_mul :public mit_operator_binary {};
class mit_div :public mit_operator_binary {};
class mit_mod :public mit_operator_binary {};

// ?߼???????
class mit_logic_and :public mit_operator_binary {};
class mit_logic_not :public mit_operator_binary {};
class mit_logic_or :public mit_operator_binary {};
// λ????
class mit_bit_and :public mit_operator_binary {};
class mit_bit_not :public mit_operator_binary {};
class mit_bit_or :public mit_operator_binary {};
class mit_bit_xor :public mit_operator_binary {};

class mit_bit_shift_left :public mit_operator_unary {};
class mit_bit_shift_right :public mit_operator_unary {};

// ?Ƚ?????
class mit_ne :public mit_operator_binary {};// not equal
class mit_eq :public mit_operator_binary {};// equal 
class mit_gt :public mit_operator_binary {};// greater
class mit_ge :public mit_operator_binary {};// greater or equal
class mit_st :public mit_operator_binary {};// smaller 
class mit_se :public mit_operator_binary {};// smaller or equal

// ??????????
class mit_condition :public mit_operator_ternary {};

class mit_scope :public mit_element {};
class mit_function :public mit_scope {};
class mit_class :public mit_scope {};

class mit_symbol :public mit_scope {};

class mit_placeholder :public mit_element {};
#endif
