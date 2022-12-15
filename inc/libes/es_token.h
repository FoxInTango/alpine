/*
 * libes
 *
 * Copyright (C) 2022 FoxInTango <foxintango@yeah.net>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 */
#ifndef _es_token_h_
#define _es_token_h_

/**
 * TOKEN -- 连续的符号
 *       -- 连续的数字
 *       -- 连续的文字
 *   分割 -- 字符串以外的空格
 */

#define es_number_0  L'0'
#define es_number_1  L'1'
#define es_number_2  L'2'
#define es_number_3  L'3'
#define es_number_4  L'4'
#define es_number_5  L'5'
#define es_number_6  L'6'
#define es_number_7  L'7'
#define es_number_8  L'8'
#define es_number_9  L'9'
#define es_number_0b L"0b"  // 二进制
#define es_number_0B L"0B"  // 二进制
#define es_number_0x L"0x"  // 十六进制
#define es_number_0X L"0X"  // 十六进制
#define es_number_0o L"0o"  // 八进制
#define es_number_0O L"0O"  // 八进制
#define es_number_e  L'e'   // 科学计数法
#define es_number_E  L'E'   // 科学计数法

/**
 * bracket  ()
 * angle    <>
 * square   []
 * braces   {}
 */
#define es_token_mark_bracket_l            L"("
#define es_token_mark_bracket_r            L")"
#define es_token_mark_angle_l              L"<" // 1 < | 2 << | 3 <=
#define es_token_mark_angle_r              L">" // 1 > | 2 >> | 3 >=
#define es_token_mark_square_l             L"["
#define es_token_mark_square_r             L"]"
#define es_token_mark_brace_l              L"{"
#define es_token_mark_brace_r              L"}"
#define es_token_mark_dot                  L"."
#define es_token_mark_space                L" "
#define es_token_mark_quote_s              L"'"
#define es_token_mark_quote_d              L"\""
#define es_token_mark_colon                L":"
#define es_token_mark_semi                 L";"
#define es_token_mark_slash                L"/" // 1 / | 2 // | 3 /* | 4 */
#define es_token_mark_bslash               L"\\"
#define es_token_mark_vbar                 L"|" // 1 | | 2 || | 3 |=
#define es_token_mark_wave                 L"~" // 1 ~ | 2 ~= 
#define es_token_mark_woo                  L"!" // 1 ! | 2 != | 3 !==
#define es_token_mark_at                   L"@" // PASS
#define es_token_mark_sharp                L"#" // PASS
#define es_token_mark_usd                  L"$" // PASS
#define es_token_mark_percent              L"%" // 1 % | 2 %=
#define es_token_mark_arrow_up             L"^" // 1 ^ | 2 ^=
#define es_token_mark_and                  L"&" // 1 & | 2 && | 3 &=
#define es_token_mark_what                 L"?"
#define es_token_mark_comma                L","
#define es_token_mark_cross                L"+" // 1 + | 2 += | 3 ++
#define es_token_mark_hyphen               L"-" // 1 - | 2 -= | 3 --
#define es_token_mark_star                 L"*" // 1 * | 2 *= | 3 */
#define es_token_mark_dhbar                L"=" // 1 = | 2 == | 3 ===

#define es_token_operator_assign           L"="

#define es_token_operator_assign_add       L"+="
#define es_token_operator_assign_add_s     L"++"
#define es_token_operator_assign_sub       L"-="
#define es_token_operator_assign_sub_s     L"--"

#define es_token_operator_assign_mul       L"*="
#define es_token_operator_assign_exc       L"/="
#define es_token_operator_assign_mod       L"%="
#define es_token_operator_assign_exp       L"^="
#define es_token_operator_assign_bw_and    L"&="
#define es_token_operator_assign_bw_or     L"|="
#define es_token_operator_assign_bw_not    L"~="

#define es_token_operator_add              L"+"
#define es_token_operator_sub              L"-"
#define es_token_operator_mul              L"*"
#define es_token_operator_exc              L"/"
#define es_token_operator_mod              L"%"
#define es_token_operator_exp              L"^"

#define es_token_operator_what             L"?"
#define es_token_operator_comma            L","
/**
 * bw : bitwise  
 */
#define es_token_operator_bw_and           L"&"
#define es_token_operator_bw_or            L"|"
#define es_token_operator_bw_xor           L"^"
#define es_token_operator_bw_not           L"~"
#define es_token_operator_shift_l          L"<<"
#define es_token_operator_shift_r          L">>"
/**
 * lg : logic
 */
#define es_token_operator_lg_and           L"&&"
#define es_token_operator_lg_or            L"||"
#define es_token_operator_lg_not           L'!'

#define es_token_comment_short             L"//"
#define es_token_comment_long_l            L"/*"
#define es_token_comment_long_r            L"*/"
/**
 * c : compare
 * g : greater
 * l : less
 * e : equal
 * f : full
 */
#define es_token_operator_cg               L">"
#define es_token_operator_cl               L"<"
#define es_token_operator_cge              L">="
#define es_token_operator_cle              L"<="
#define es_token_operator_ce               L"=="
#define es_token_operator_cef              L"==="
#define es_token_operator_ne               L"!="
#define es_token_operator_nef              L"!=="

#define es_token_operator_typeof           L"typeof"
#define es_token_operator_instof           L"instanceof"

#define es_token_keyword_this              L"this"
#define es_token_keyword_super             L"super"
#define es_token_keyword_consfun           L"constructor"
#define es_token_keyword_extends           L"extends"
#define es_token_keyword_set               L"set"
#define es_token_keyword_get               L"get"

#define es_token_keyword_true              L"true"
#define es_token_keyword_flase             L"false"
#define es_token_keyword_null              L"null"
#define es_token_keyword_undefined         L"undefined"

#define es_token_keyword_if                L"if"
#define es_token_keyword_else              L"else"
#define es_token_keyword_switch            L"switch"
#define es_token_keyword_case              L"case"
#define es_token_keyword_default           L"default"
#define es_token_keyword_do                L"do"
#define es_token_keyword_while             L"while"
#define es_token_keyword_for               L"for"
#define es_token_keyword_in                L"in"
#define es_token_keyword_try               L"try"
#define es_token_keyword_catch             L"catch"
#define es_token_keyword_continue          L"continue"
#define es_token_keyword_break             L"break"
#define es_token_keyword_return            L"return"

#define es_token_keyword_static            L"static"
#define es_token_keyword_const             L"const"
#define es_token_keyword_var               L"var"
#define es_token_keyword_let               L"let"
#define es_token_keyword_function          L"function"
#define es_token_keyword_class             L"class"
#define es_token_keyword_export            L"export"
#define es_token_keyword_import            L"import"
#define es_token_keyword_throw             L"throw"
#define es_token_keyword_new               L"new"

/** enum */
typedef enum _es_token_type {
 es_token_unsure,        
 es_token_bracket_l,        // L'('
 es_token_bracket_r,        // L')'
 es_token_angle_l,          // L'<'
 es_token_angle_r,          // L'>'
 es_token_square_l,         // L'['
 es_token_square_r,         // L']'
 es_token_brace_l,          // L'{'
 es_token_brace_r,          // L'}'
 es_token_dot,              // L'.'
 es_token_space,            // L' '
 es_token_quote_s,          // L'\'
 es_token_quote_d,          // L'"'
 es_token_colon,            // L':'
 es_token_semi,             // L';'
 es_token_slash,            // L'/'
 es_token_bslash,           // L'\'
 es_token_vbar,             // L'|'
 es_token_wave,             // L'~'
 es_token_woo,              // L'!'
 es_token_at,               // L'@'
 es_token_sharp,            // L'#'
 es_token_usd,              // L'$'
 es_token_percent,          // L'%'
 es_token_arrow_up,         // L'^'
 es_token_and,              // L'&'
 es_token_what,             // L'?'
 es_token_comma,            // L','

 es_token_assign,           // L'='
 es_token_assign_add,       // L"+="
 es_token_assign_add_s,     // L"++"
 es_token_assign_sub,       // L"-="
 es_token_assign_sub_s,     // L"--"
 es_token_assign_mul,       // L"*="
 es_token_assign_exc,       // L"/="
 es_token_assign_mod,       // L"%="
 es_token_assign_exp,       // L"^="
 es_token_assign_bw_and,    // L"&="
 es_token_assign_bw_or,     // L"|="
 es_token_assign_bw_not,    // L"~="

 es_token_add,              // L'+'
 es_token_sub,              // L'-'
 es_token_mul,              // L'*'
 es_token_exc,              // L'/'
 es_token_mod,              // L'%'
 es_token_exp,              // L'^'

 es_token_bw_and,           // L'&'
 es_token_bw_or,            // L'|'
 es_token_bw_xor,           // L'^'
 es_token_bw_not,           // L'~'
 es_token_shift_l,          // L"<<"
 es_token_shift_r,          // L">>"

 es_token_lg_and,           // L"&&"
 es_token_lg_or,            // L"||"
 es_token_lg_not,           // L'!'

 es_token_cg,               // L'>'
 es_token_cl,               // L'<'
 es_token_cge,              // L">="
 es_token_cle,              // L"<="
 es_token_ce,               // L"=="
 es_token_cef,              // L"==="
 es_token_ne,               // L"!="
 es_token_nef,              // L"!=="

 es_token_typeof,           // L"typeof"      https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Operators/typeof
 es_token_instof,           // L"instanceof"  https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Operators/instanceof

 es_token_new,              // L"new"
 es_token_this,             // L"this"
 es_token_super,            // L"super"
 es_token_consfun,          // L"constructor"
 es_token_extends,          // L"extends"
 es_token_set,              // L"set"
 es_token_get,              // L"get"

 es_token_true,             // L"true"
 es_token_flase,            // L"false"
 es_token_null,             // L"null"
 es_token_undefined,        // L"undefined"

 es_token_number,
 es_token_0,                // L'0'
 es_token_1,                // L'1'
 es_token_2,                // L'2'
 es_token_3,                // L'3'
 es_token_4,                // L'4'
 es_token_5,                // L'5'
 es_token_6,                // L'6'
 es_token_7,                // L'7'
 es_token_8,                // L'8'
 es_token_9,                // L'9'
 es_token_0b,               // L"0b" // 二进制
 es_token_0B,               // L"0B" // 二进制
 es_token_0x,               // L"0x" // 十六进制
 es_token_0X,               // L"0X" // 十六进制
 es_token_0o,               // L"0o" // 八进制
 es_token_0O,               // L"0O" // 八进制
 es_token_e,                // L'e'   // 科学计数法
 es_token_E,                // L'E'   // 科学计数法

 es_token_if,               // L"if"
 es_token_else,             // L"else"
 es_token_switch,           // L"switch"
 es_token_case,             // L"case"
 es_token_default,          // L"default"
 es_token_do,               // L"do"
 es_token_while,            // L"while"
 es_token_for,              // L"for"
 es_token_in,               // L"in"
 es_token_try,              // L"try"
 es_token_catch,            // L"catch"
 es_token_continue,         // L"continue"
 es_token_break,            // L"break"
 es_token_return,           // L"return"

 es_token_static,           // L"static"
 es_token_const,            // L"const"
 es_token_var,              // L"var"
 es_token_let,              // L"let"
 es_token_function,         // L"function"
 es_token_class,            // L"class"
 es_token_export,           // L"export"
 es_token_import,           // L"import"
 es_token_throw,            // L"throw"

 es_token_comment_s,        // L"//"
 es_token_comment_l,        // L"/*"
 es_token_comment_r,        // L"*/"
}es_token_type;
typedef struct _es_token {
es_token_type type;
wchar_t* name;
wchar_t* value;
wchar_t* documentURL;
unsigned int lineIndex;
unsigned int charIndex;
}es_token;

class es_token_array{
public:
    es_token_array();
   ~es_token_array();
public:
    const es_token& at(const unsigned int& index);
    unsigned int count();
    unsigned int count(const wchar_t* text);
    unsigned int count(const es_token_type& type);
public:
    unsigned int append(const es_token& token);
    unsigned int append(es_token_array& array);
    unsigned int remove(const unsigned int& index);
    unsigned int insert(const es_token& token,const unsigned int& index);
public:
    const es_token& operator [] (const unsigned int& index);
};

void es_token_init();
/**
 * return : 0 normal
 *          - back
 *          + step
 *  const
 *  consts 
 */
int es_token_what_is(const wchar_t* const text, const bool& asked,es_token& token,const es_token_array& array);
/** 详：控制字符 */
#endif
