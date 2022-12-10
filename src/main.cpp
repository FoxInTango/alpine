// FROM   : https://www.jianshu.com/p/b9eae892bcc0
// NOTICE : https://blog.flowlore.com/passages/inotify-shi-yong-jiao-cheng/
#include <stdio.h>  
#include <string.h>  
#include <stdlib.h>  
#include <sys/inotify.h>  
#include <unistd.h>  
#include <iostream>
#include <sys/stat.h>
#include <dirent.h>
#define EVENT_NUM 12 

#include "libfsevent.h"
//#include "es/es_document.h"
char* event_str[EVENT_NUM] =
{
    "IN_ACCESS",
    "IN_MODIFY",
    "IN_ATTRIB",
    "IN_CLOSE_WRITE",
    "IN_CLOSE_NOWRITE",
    "IN_OPEN",
    "IN_MOVED_FROM",
    "IN_MOVED_TO",
    "IN_CREATE",
    "IN_DELETE",
    "IN_DELETE_SELF",
    "IN_MOVE_SELF"
};

const char* watch_path = "./index";

/**
 * nodeType : file | dir | link 
 * eventType : create | delete | rename | update
 * 
 * commandType : mv | rm  | mk | ln |*| start | stop 
 */
int init_command_channel() {
    return 0;
}

int parse_command() {

}

int watch_node() {}

int switch_event_type() {}

/*
char* on = "{string:"s",number:20,obj:{},array:[]}"
*/
const unsigned int on_element_type_bool   = 0;
const unsigned int on_element_type_number = 1;
const unsigned int on_element_type_string = 2;
const unsigned int on_element_type_object = 3;
const unsigned int on_element_type_array  = 0;

typedef struct _on_element {
    int type;
    char* name;
    void* value;
    _on_element* subelements;
}on_element;

int parse_on(char* content,size_t index) {
    size_t length = strlen(content);
    while (index < length)
    {
        switch (content[index])
        {
        case '{': {}break;
        case '}': {}break;
        case '[': {}break;
        case ']': {}break;
        case '"': {}break;
        case ',': {}break;
        default:
            break;
        }
    }
}

int main(int argc, char* argv[])
{
    // https://en.cppreference.com/w/cpp/locale/locale
    // std::wcout << "User-preferred locale setting is " << std::locale("").name().c_str() << '\n';
    // on startup, the global locale is the "C" locale
    // std::wcout << 1000.01 << '\n';
    // replace the C++ global locale as well as the C locale with the user-preferred locale
    // std::locale::global(std::locale(""));
    // use the new global locale for future wide character output
    // std::wcout.imbue(std::locale());
    // output the same number again
    // std::wcout << 1000.01 << '\n';

    //es_document doc;
    //return doc.load("./index.es");
    struct stat _stat_;
    std::cout << "file stat : " << stat("./index", &_stat_) << std::endl;
    std::cout << "file stat : " << stat("./index/boot", &_stat_) << std::endl;
    std::cout << "file stat : " << stat("./index/quit", &_stat_) << std::endl;
    DIR * dir = opendir("./");
    if (dir) {
        struct dirent* node = 0;
        while (node = readdir(dir))
        {
            struct stat _stat_;
            stat(node->d_name, &_stat_);
            std::cout << "节点名称" << node->d_name << std::endl;
        }

        closedir(dir);
    }
    while (true)
    {
        std::cout << "go to bed." <<std::endl;
        usleep(1000000);
    }

    

    //return 0;
    //return system("rm /home/sparrow/alpine");
    int fd;
    int wd;
    int len;
    int nread;
    char buf[BUFSIZ];
    struct inotify_event* event;
    int i;
    return 0;
}
