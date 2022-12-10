#ifndef _fs_node_h_
#define _fs_node_h_
#include "fs_event.h"
const int FS_NODE_DEPTH_MAX = 0b10000001;
const int FS_NODE_DEPTH_LNK = 0b10000010;

const unsigned int FS_NODE_TYPE_FILE = 0;

//const char* const FS_NODE_TYPE_STRING = ["","",""];
typedef void (*fsevent_handler)(const fs_event&);
class fs_node {
private:
  void* implement;
  // utime mtime
public:
  fs_node();
  fs_node(const char *path);
  ~fs_node();

public:
  int type();
  char* typeName();
  int watch(fs_event_callback handler = 0, const unsigned int& depth = 0);
  int unwatch(...);
  char* path();
  char* realPath();

  unsigned int utime();

  /*
  fs_node* mkdir(char* name);
  fs_node* rmdir(char* name);
  */
  fs_node *parentNode();
  fs_node *childNodeAt(const unsigned int &index);
  fs_node *childNodeWithName(char *name, const unsigned int &depth);
};

#endif // !