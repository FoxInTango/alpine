#ifndef _alpine_h_
#define _alpine_h_
#include "fs_event.h"
/**
 * alpine:
 * a:"",
 * b:20200,
 * b:[],
 * c:{}
 */

struct alpine_config {
  char *nginxPath;
};

class fs_node;
class fs_event;
/**
 * /dev/shm/alpine
 * 
 */
int alpine_init(const alpine_config* config);
int alpine_load_commands(const char* path);
int alpine_watch(char *path, const fs_event *event, fs_event_callback handler,const int &depth = 0);
int alpine_mk_link();
int alpine_rm_link();
void alpine_fs_event_handler(const fs_event& event);

#endif