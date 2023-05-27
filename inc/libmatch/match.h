/** MIT License

Copyright(c) 2022 FoxInTango <foxintango@yeah.net>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this softwareand associated documentation files(the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and /or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions :

The above copyright noticeand this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#ifndef _MATCH_H_
#define _MATCH_H_

/** ASTMatch ASTToken ASTBlock
 *              type     type
 *              name     name
 * 
 *  功能:
 *  一，匹配:校验目标序列是否符合指定规则
 *  二，查找:于目标序列中查找符合指定规则的子序列
 * 
 *  概念:
 *  元素与序列：元素是一个泛型概念，它指同类型事物所构成的集合中的单一个体。元素序列是指由该事物所构成的集合的数组型排列。
 *  元素分为位置元素和模式元素。
 *  位置元素:是指在某一个序列中位置的序号，由数值或由指代位置数值的符号和表达式构成。
 *  模式元素:是指由该类型事物的单体、复合体，或经表达式描述所构成的复合体。
 *  变量:变量代表了单个元素或者元素序列，变量之间支持相应的序列运算。
 * 
 *  序列特征--如何描述:
 *  基本特征：
 *      一，长度特征
 *      二，含有特征
 *             序列某位置
 *                 含有某元素集合中的N个元素
 *                     有且有其N:
 *                         有且有其N以上
 *                         有且仅有N以下
 *                         有A则在某范围无 ... 斥关系
 *                         有A则在某范围有 ... 友关系
 *                         无A则在某范围无 ...
 *                         无A则在某范围有 ...
 *                 含有特征重复次数 0 1 2  ...
 *       三，顺序特征
 *               符合特征A的部分处，符合特征B的部分必相对偏移[向前偏移|向后偏移]
 *                   特殊:符合特征A,B,C的排序必为 A B C
 *               
 *  复合特征:
 *      指定范围内，于符合特征的位置的某一相对位置符合另一特征
 * 
 *  基本符号与基本符号的转义: 反引号 ``
 *  模式代码文件的行连接: ...  |
 *  
 *  基本元素
 *   1 2 3 a,b,c ...
 *  复合元素
 *      通过基本元素组合:
 *          ab12,293#()#@*(,232!@ ...
 *      通过基本元素的重复与通配：
 *          a*3ccbd  -- aaaccbd
 *          a*=3b
 *          a[*:index]
 *      通过基本元素与复合元素的再复合
 *          
 * 
 *  模式元素
 *      模式元素的生成：
 *          自然元素
 *          根据描述定义元素
 * 
 *  位置元素
 *      位置元素的生成:
 *          自然元素
 *          根据描述定义元素
 *              从位置序列中拣选子序列
 * 
 *  序列定义与序列运算
 *      自然序列
 *      自定序列
 *  序列通过[]包含,例如 -- 位置元素序列:[0,1,2,3] ，模式元素序列:[x,y,z]
 *  序列与序列之间可以通过运算生成新序列，序列运算包括: 并运算、交运算、差运算、补运算。
 *                                              运算符: |       &       /       ^
 * 
 * 
 *  模式与模式匹配
 * 
 *  变量
 * 
 *  行为:匹配,查找,追加,插入,删除,分割
 * 
 *  1,字母 : [a - z]
 *           [A - Z]
 *  2,数字 : [0 - 9]
 *  3,符号 : [ ~ ` ! @ # $ % ^ & * ( ) - = _ + , . ; : ' " [ ] { } < > ? / | \ ]
 *  4,制表符
 *  5,控制符
 *  内置序列:https://baike.baidu.com/item/ASCII/309296
 *     位置序列  : int     [-∞ -- +∞]
 *     符号序列  : char    [' ' - '/'] [':' - '@'] ['[' - '`'] ['{' - '~']
 *     字母序列  : char    ['A' - 'Z'] ['a' - 'z']
 *     数符序列  : char    ['0' - '9']
 *     字符序列[待定] : wchar_t [0 - 2^32]
 *     
 * 
 *  location=@[2323,3223,[2,3,4,5]]
 *  #[1,2,3,4]
 *  @<1,2,3,[2,4,ab,cc,d]>
 *  @[1,2,3,[2,4,ab,cc,d]]
 *  location=
 *  index=[a-b,c-w,0-9]
 *  @+2022:
 *  @-2022:
 *  @|+2022:
 *  @|-2022:
 *  @|1/3-2022:
 *  @>=2022:
 *  @<=2022:
 *  @[0-2 | -2,3-7,8-]:
 *                                                           
 *  @*:[ 20 : a - z / h - w >= 2,a == 3,b < 5] & [0 - 5 < 2] & [xy,ab,cd,xy*,*xy,xy[a,b,c,index]] < 5 | index > 2;
 *  20@*:[ a - z / h - w >= 2 ,a == 3,b < 5] & [0 - 5 < 2] & [xy,ab,cd,xy*,*xy,xy[a,b,c,index]] < 5 | index > 2;
 * 
 *  [20,20]:[a - z / h - w >= 2 ,a == 3,b < 5]]
 *  20,20 : a - z / h - w >= 2 & a,b,c,d | 
 * 
 *  1,2,3,4:a,b,~c,d
 *
 */

 /**
  * 面对一段内容，我们要做什么，我们能做什么？  
  */

/** ASTMatchVar
 * 
 */

/** ASTMatchMode
 * 
 */

/** 集合运算
 *  并运算
 * ---------------------
 * |/////////////------|------------
 * |/////////////|/////|///////////|
 * |/////////////|/////|///////////|
 * |/////////////------|------------
 * ---------------------
 * 交运算
 * ---------------------
 * |             ------|------------
 * |             |/////|           |
 * |             |/////|           |
 * |             ------|------------
 * ---------------------
 * 差运算
 * ---------------------
 * |/////////////------|------------
 * |/////////////|     |           |
 * |/////////////|     |           |
 * |/////////////------|------------
 * ---------------------
 * 补运算
 * ---------------------
 * |/////////////------|------------
 * |/////////////|     |///////////|
 * |/////////////|     |///////////|
 * |/////////////------|------------
 * ---------------------
 */
/** ASTMatchOperator 
 *  序列结合运算符： 
 *  并集:|
 *  交集:&
 *  差集:/
 * 
 *  匹配条件运算符：
 *  ==
 *  !=
 *  >=
 *  <=
 *  >
 *  <
 * 
 *  模式结合运算符
 *  & 并且
 *  | 或者
 *  / 
 */

// ASTMatchRange 

typedef struct _ASCII_CODE{
    char code;
    char name[8];
    char discription[32];
}ASCII_CODE;

extern "C" ASCII_CODE AST_ascii_code_array[];

typedef struct _MATCH_ERROR{
    typedef enum _match_error_type{}match_error_type;
    match_error_type type;
    char* error;
}MATCH_ERROR;

class MatchElementImplement;

class MatchElement {
protected:
    MatchElement* m_super;
public:
    typedef enum _MATCH_ELEMENT_TYPE {
        MATCH_ELEMENT_TYPE_sequence
    }MATCH_ELEMENT_TYPE;
    typedef enum _MATCH_LOAD_STATUS {
        MATCH_LOAD_STATUS_BAD_ELEMENT = -1,
        MATCH_LOAD_STATUS_UNSURE,
        MATCH_LOAD_STATUS_OK
    }MATCH_LOAD_STATUS;
public:
    MATCH_ELEMENT_TYPE type;
public:
    MatchElementImplement* implement;
public:
    MatchElement();
   ~MatchElement();
public:
    MatchElement* super();
public:
    bool eol(const wchar_t& value);
    bool letter(const wchar_t& value);
    bool arabic(const wchar_t& value);
public:
    virtual int loadMode(const wchar_t* mode, unsigned int& index, const unsigned int& size);
    virtual int pushError(const MATCH_ERROR& error);
};

class MatchSequence;
class MatchOperator;
class MatchRange;
class MatchMode;
class MatchCondition;

class Match :public MatchElement {
public:
    Match();
    ~Match();
public:
    bool match(const char* target, const unsigned int& size, const char* mode = 0) {
        return 0;
    }

    int lookup() { return 0; }
    int append() { return 0; }
    int split()  { return 0; }
    int remove() { return 0; }
    int replace(){ return 0; }
public:
    int makeMode(const char* mode, unsigned int& index, const unsigned int& size);
public:
    virtual int loadMode(const wchar_t* mode, unsigned int& index,const unsigned int& size);
    virtual int pushError(const MATCH_ERROR& error);
};
#endif