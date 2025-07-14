#include "mit_document.h"
#include "mit_context.h"
#ifndef MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE
#define MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE 1024 // M bytes
#endif

/**
 readfile -- buffer[MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE] -- get-token -- switch token [ keywaords | operator | marks  ] -- |
                                                               |                                                          |
                                                              ------------------------------------------------------------
 */
mit_document::mit_document() : fd(0)
{
    file_buffer = new char[MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE * 1024 * 1024];
    if (file_buffer)
        file_buffer_size = MIT_DOCUMENT_MAX_TOKEN_BUFFER_SIZE * 1024 * 1024;
}
mit_document::~mit_document()
{
    if (fd)
        fclose(fd);
    if (file_buffer)
        delete[] file_buffer;
}
#include <cstdio>
int mit_document::load(mit_context *context, const std::string &path)
{
    if (fd)
    {
        fclose(fd);
        fd = 0;
    };

    document_name.clear();
    document_path.clear();
    //tokens.clear();

    fd = fopen(path.c_str(), "r");
    if (!fd)
    {
        printf("can't open file %s", path.c_str());
        return -1;
    }
    // TODO name =
    document_path = path;

    //read_file();
    mit_token t;
    while((t = forward()).value() != "EOL"){
        switch_element(t);
    }
    return 0;
}

int mit_document::read_file()
{
    if (file_buffer && fd)
    {
        memset(file_buffer, 0, file_buffer_size);
        size_t rs = fread(file_buffer, 1, file_buffer_size, fd);
        if (rs)
        {
            fp += rs;
            bp = 0;
            buffer_content_length = rs;
            return 0;
        }
        return -2;// EOF
    }

    return -1;// NOT READY
}

mit_token &mit_document::forward()
{
    if (bp + 1 >= buffer_content_length)
    {
        int rs = read_file();
        switch (rs) {
            case 0:{
            } break;
            case -2:{ 
            }break;
            default:break;
        }
    }

    // 判断是否多字符token
    if(file_buffer[bp] == '='){}
    else if (file_buffer[bp] == '>'){}
    else if (file_buffer[bp] == '<') {}
    else if (file_buffer[bp] == '!') {}
    else if (file_buffer[bp] == '+') {}
    else if (file_buffer[bp] == '-') {}
    else if (file_buffer[bp] == '*') {}
    else if (file_buffer[bp] == '/') {}
    // 判断是否关键字
    // 判断是否symbol

}

// STRING HASH https://zhuanlan.zhihu.com/p/118129655 https://zhuanlan.zhihu.com/p/578829801
int mit_document::switch_element(const mit_token &t){
    //size_t h = t.hash();
    switch (t.hash()){
    case 1:{
        context->symbolAt("");
    }
    break;
    default:
        break;
    }
};

int mit_document::load_element()
{
    return 0;
}
/*
    mit_token load_token() {
    }
*/

int mit_document::load_bool(const std::vector<mit_token>::iterator &current){ return 0; }   // false | true
int mit_document::load_string(const std::vector<mit_token>::iterator &current) { return 0; } // ""
int mit_document::load_number(const std::vector<mit_token>::iterator &current) { return 0; } // 1.00f
int mit_document::load_array(const std::vector<mit_token>::iterator &current) { return 0; }  //[]
int mit_document::load_map(const std::vector<mit_token>::iterator &current) { return 0; }    // {}

// �����
// class mit_operator         :public mit_element{};
int mit_document::load_operator_unary(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_operator_binary(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_operator_ternary(const std::vector<mit_token>::iterator &current) { return 0; }

// ��ֵ�����
int mit_document::load_assign(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_add_assign(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_sub_assign(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_mul_assign(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_div_assign(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_mod_assign(const std::vector<mit_token>::iterator &current) { return 0; }

// ��ѧ�����
int mit_document::load_add(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_sub(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_mul(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_div(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_mod(const std::vector<mit_token>::iterator &current) { return 0; }

// �߼������
int mit_document::load_logic_and(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_logic_not(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_logic_or(const std::vector<mit_token>::iterator &current)  { return 0; }

// λ����
int mit_document::load_bit_and(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_bit_not(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_bit_or(const std::vector<mit_token>::iterator &current)  { return 0; }
int mit_document::load_bit_xor(const std::vector<mit_token>::iterator &current) { return 0; }

int mit_document::load_bit_shift_left(const std::vector<mit_token>::iterator &current)  { return 0; }
int mit_document::load_bit_shift_right(const std::vector<mit_token>::iterator &current) { return 0; }

// �Ƚ�����
int mit_document::load_ne(const std::vector<mit_token>::iterator &current) { return 0; }// not equal
int mit_document::load_eq(const std::vector<mit_token>::iterator &current) { return 0; } // equal
int mit_document::load_gt(const std::vector<mit_token>::iterator &current) { return 0; } // greater
int mit_document::load_ge(const std::vector<mit_token>::iterator &current) { return 0; } // greater or equal
int mit_document::load_st(const std::vector<mit_token>::iterator &current) { return 0; } // smaller
int mit_document::load_se(const std::vector<mit_token>::iterator &current) { return 0; } // smaller or equal

// ���������
int mit_document::load_condition(const std::vector<mit_token>::iterator &current) { return 0; }

int mit_document::load_scope(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_function(const std::vector<mit_token>::iterator &current) { return 0; }
int mit_document::load_class(const std::vector<mit_token>::iterator &current) { return 0; }

int mit_document::load_symbol(const std::vector<mit_token>::iterator &current) { return 0; }

int mit_document::load_placeholder(const std::vector<mit_token>::iterator &current) { return 0; }
