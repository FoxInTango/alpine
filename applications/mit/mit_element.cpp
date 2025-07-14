#include "mit_element.h"
#include "mit_keywords.h"

mit_token::mit_token(){}
mit_token::mit_token(const std::string& value){}
mit_token::~mit_token(){}
const std::string& mit_token::value(){ return val; }
size_t mit_token::hash() const { return STRING_HASH(val); }

std::hash<std::string> string_hash;

mit_token document_token_eof = {
    "EOF"
};

const mit_token& mit_token::mit_eof(){
    return document_token_eof;
}

mit_element::mit_element() : element_type("mit_element"),super_element(0) {}
mit_element::~mit_element(){}

std::string mit_element::elementType() { return "mit_element"; }
bool mit_element::isMeta()     { return false; }
bool mit_element::isOperator() { return false; }
bool mit_element::isFunction() { return false; }
bool mit_element::isClass()    { return false; }
mit_element* mit_element::super() { return this->super_element; }
mit_element* mit_element::elementAt(const std::string& name) { return 0; }

mit_element& mit_element::operator = (const mit_element* e) { return *this; }
mit_element& mit_element::operator = (const mit_element& e) { return *this; }
bool mit_element::operator == (const mit_element* e) const { return e->element_type == element_type ? true : false; }
bool mit_element::operator == (const mit_element& e) const { return e.element_type  == element_type ? true : false; }

int  mit_element::execute(const mit_context* context) { return 0; }

int mit_element::flow(const mit_context* context) {
        execute(context);
        if(this->subelements.size() < 1) return 1;
        std::vector<mit_element*>::iterator iter = this->subelements.begin();
        while(iter != this->subelements.end()){
            (*iter)->flow(context);
            iter ++;
        }
    }


