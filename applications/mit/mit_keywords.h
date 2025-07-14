#ifndef _MIT_KEYWORDS_H_
#define _MIT_KEYWORDS_H_

#include <functional>
extern std::hash<std::string> string_hash;
#define STRING_HASH(x) string_hash(x)
// 加载时| 运行时 指令
#define MIT_KW_IMPORT      STRING_HASH("import")
#define MIT_KW_AS          STRING_HASH("as")
#define MIT_KW_EXPORT      STRING_HASH("export")

#define MIT_KW_ASYNC       STRING_HASH("async")        //async function

#define MIT_KW_FUNCTION    STRING_HASH("function")
#define MIT_KW_CLASS       STRING_HASH("class")
#define MIT_KW_NEW         STRING_HASH("new")
#define MIT_KW_CONSTRUCTOR STRING_HASH("constructor")
#define MIT_KW_SETTER      STRING_HASH("setter")
#define MIT_KW_GETTER      STRING_HASH("getter")

#define MIT_KW_CONST       STRING_HASH("const")
#define MIT_KW_LET         STRING_HASH("let")
#define MIT_KW_VAR         STRING_HASH("var")

#define MIT_KW_RETURN      STRING_HASH("return")
#define MIT_KW_TRY         STRING_HASH("try")
#define MIT_KW_CATCH       STRING_HASH("catch")
#define MIT_KW_THROW       STRING_HASH("throw")

#define MIT_KW_IF          STRING_HASH("if")
#define MIT_KW_ELSE        STRING_HASH("else")

#define MIT_KW_SWITCH      STRING_HASH("switch")
#define MIT_KW_CASE        STRING_HASH("case")
#define MIT_KW_DEFAULT     STRING_HASH("default")

#define MIT_KW_FOR         STRING_HASH("for")
#define MIT_KW_IN          STRING_HASH("in")
#define MIT_KW_OF          STRING_HASH("of")

#define MIT_KW_DO          STRING_HASH("do")
#define MIT_KW_WHILE       STRING_HASH("while")

#define MIT_KW_BREAK       "break"

#define MIT_OP_ASSIGN      "="
#define MIT_OP_ADD_ASSIGN  "+="
#define MIT_OP_SUB_ASSIGN  "-="
#define MIT_OP_MUL_ASSIGN  "*="
#define MIT_OP_DIV_ASSIGN  "/="
#define MIT_OP_MOD_ASSIGN  "%="

#define MIT_OP_ADD         "+"
#define MIT_OP_SUB         "-"
#define MIT_OP_MUL         "*"
#define MIT_OP_DIV         "/"
#define MIT_OP_MOD         "%"

#define MIT_OP_AND_LOGIC   "&&"
#define MIT_OP_OR_LOGIC    "||"
#define MIT_OP_NOT_LOGIC   "!"

#define MIT_OP_AND_BIT     "&"
#define MIT_OP_NOT_BIT     "~"
#define MIT_OP_OR_BIT      "|"
#define MIT_OP_XOR_BIT     "^"

#define MIT_OP_SL_BIT      "<<"
#define MIT_OP_SR_BIT      ">>"

#define MIT_OP_NE          "!="
#define MIT_OP_EQ          "=="
#define MIT_OP_EQ_FULL     "==="
#define MIT_OP_GT          ">"
#define MIT_OP_GE          ">="
#define MIT_OP_ST          "<"
#define MIT_OP_SE          "<="

#define MIT_OP_CONDITION   '?'

#define MIT_MARK_DOT       '.'
#define MIT_MARK_BRACE_L   '{'
#define MIT_MARK_BRACE_R   '}'
#define MIT_MARK_PAREN_L   '['
#define MIT_MARK_PAREN_R   ']'
#define MIT_MARK_BRAKET_L  '('
#define MIT_MARK_BRAKET_R  ')'

#define MIT_DOCUMENT_EOF   
#define MIT_DOCUMENT_EOL_UNIX "\n"
#define MIT_DOCUMENT_EOL_WIN  "\r\n"

/*
function take_token
*/ 
/**
    forward()
        if(buffer empty )  load data from file)
        get next token
        switch_element(tokens)
          check super element. 
          case keyworkd:
             import : new document && merge it to this document with new name as been named.
             export : insert symbol to document symbol map.
           
             var let const
             function
             class 
             constructor
             getter
             setter
          case oprator
          case mark 
            (:new BRAKET_SCOPE && push to element stack
                forward && switch_element
                          case non-possible
                          case string

    load_element

    var x = y;

    function x() {}
    class x {}

    ()
  */

#endif
