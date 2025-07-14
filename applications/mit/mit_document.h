#ifndef _MIT_DOCUMENT_H_
#define _MIT_DOCUMENT_H_
#include "mit_element.h"
#ifndef MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE
#define MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE 1024 // M bytes
#endif

/**
 readfile -- buffer[MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE] -- get-token -- switch token [ keywaords | operator | marks  ] -- |
                                                               |                                                          |
                                                              ------------------------------------------------------------
 */
class mit_document {
    mit_context* context;
    std::string document_name;
    std::string document_path;
    //mit_token_stream tokens;
    FILE* fd;
    char* file_buffer;
    ssize_t file_buffer_size;
    ssize_t buffer_content_length;
    ssize_t fp;// file pointer | seek
    ssize_t bp;// file buffer pointer
    std::vector<mit_element*> top_level_elements;
    std::vector<mit_element*> element_stack;
public:
    mit_document();
    ~mit_document();
public:
    int load(mit_context* context, const std::string& path);
    int read_file();
    mit_token& forward();

    // STRING HASH https://zhuanlan.zhihu.com/p/118129655 https://zhuanlan.zhihu.com/p/578829801
    int switch_element(const mit_token& t);
    int load_element();
public:
    // 元数据
    int load_bool(const std::vector<mit_token>::iterator& current);    // false | true
    int load_string(const std::vector<mit_token>::iterator& current);  // ""
    int load_number(const std::vector<mit_token>::iterator& current);  // 1.00f
    int load_array(const std::vector<mit_token>::iterator& current);   //[]
    int load_map(const std::vector<mit_token>::iterator& current);     // {}

    // 运算符
    // class mit_operator         :public mit_element{};
    int load_operator_unary(const std::vector<mit_token>::iterator& current);
    int load_operator_binary(const std::vector<mit_token>::iterator& current);
    int load_operator_ternary(const std::vector<mit_token>::iterator& current);

    // 赋值运算符
    int load_assign(const std::vector<mit_token>::iterator& current);
    int load_add_assign(const std::vector<mit_token>::iterator& current);
    int load_sub_assign(const std::vector<mit_token>::iterator& current);
    int load_mul_assign(const std::vector<mit_token>::iterator& current);
    int load_div_assign(const std::vector<mit_token>::iterator& current);
    int load_mod_assign(const std::vector<mit_token>::iterator& current);

    // 数学运算符
    int load_add(const std::vector<mit_token>::iterator& current);
    int load_sub(const std::vector<mit_token>::iterator& current);
    int load_mul(const std::vector<mit_token>::iterator& current);
    int load_div(const std::vector<mit_token>::iterator& current);
    int load_mod(const std::vector<mit_token>::iterator& current);

    // 逻辑运算符
    int load_logic_and(const std::vector<mit_token>::iterator& current);
    int load_logic_not(const std::vector<mit_token>::iterator& current);
    int load_logic_or(const std::vector<mit_token>::iterator& current);

    // 位运算
    int load_bit_and(const std::vector<mit_token>::iterator& current);
    int load_bit_not(const std::vector<mit_token>::iterator& current);
    int load_bit_or(const std::vector<mit_token>::iterator& current);
    int load_bit_xor(const std::vector<mit_token>::iterator& current);

    int load_bit_shift_left(const std::vector<mit_token>::iterator& current);
    int load_bit_shift_right(const std::vector<mit_token>::iterator& current);

    // 比较运算
    int load_ne(const std::vector<mit_token>::iterator& current);// not equal
    int load_eq(const std::vector<mit_token>::iterator& current);// equal 
    int load_gt(const std::vector<mit_token>::iterator& current);// greater
    int load_ge(const std::vector<mit_token>::iterator& current);// greater or equal
    int load_st(const std::vector<mit_token>::iterator& current);// smaller 
    int load_se(const std::vector<mit_token>::iterator& current);// smaller or equal

    // 条件运算符
    int load_condition(const std::vector<mit_token>::iterator& current);

    int load_scope(const std::vector<mit_token>::iterator& current);
    int load_function(const std::vector<mit_token>::iterator& current);
    int load_class(const std::vector<mit_token>::iterator& current);

    int load_symbol(const std::vector<mit_token>::iterator& current);

    int load_placeholder(const std::vector<mit_token>::iterator& current);
};
#endif