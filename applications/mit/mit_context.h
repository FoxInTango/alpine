#ifndef _MIT_CONTEXT_H_
#define _MIT_CONTEXT_H_
#include "mit_element.h"
#include "mit_document.h"
class mit_context {
public:
    mit_context() {}
    ~mit_context() {}
public:
    std::vector<mit_element*> stack;
    std::map<std::string, mit_document*> documents;
    std::map<std::string, mit_symbol*> symbols;
    std::string entry;
public:
    mit_symbol* symbolAt(const std::string& name);
};
#endif