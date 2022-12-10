/*
 * alpine
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