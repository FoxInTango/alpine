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
#include "fs_node.h"
#include <sys/stat.h>
#include <sys/inotify.h> 
#include <map>
#include <vector>
#include <string>
#include <stdio.h>  
#include <stdlib.h>
#include <unistd.h>  
#include <atomic>
#include <thread>
#include <dirent.h>


#define FS_EVENT_BUFFER_SIZE 1024

//static std::map<fs_node*,std::string*> fs_node_path_map;
//volatile 
std::atomic_bool watch_nodes_opable = true;
std::thread watch_thread;// watch work thread
std::vector<int> watch_nodes;// fds of node to be watched.

//std::this_thread::sleep_for(std::chrono::milliseconds(10));

typedef struct _fs_node_implement{
    int fd;
    int wd;
    char* events;
    std::string path;
    _fs_node_implement(){
        wd = 0;
        fd = 0;
        events = new char[FS_EVENT_BUFFER_SIZE];
    }
    ~_fs_node_implement(){
        if(events) delete[] events;
    }
}fs_node_implement;

fs_node::fs_node() {
    implement = new fs_node_implement();
}

fs_node::fs_node(const char *path) {
  implement = new fs_node_implement();

  if(implement) ((fs_node_implement*) implement)->path = path;
}

fs_node::~fs_node() {
    if(implement) delete implement;
}

int fs_node::type(){
    // struct stat node;
    // stat(event->name, &node);
    // st_mode : https://blog.csdn.net/qq_43394092/article/details/124231000
    //           https://www.cnblogs.com/fly-fish/p/4717346.html
    /*
    char* node_type = "unknown";
    ;

    if ((node.st_mode & S_IFDIR) == S_IFDIR) {
        node_type = "dir";
    }
    else if ((node.st_mode & S_IFREG) == S_IFREG)
    {
        node_type = "file";
    }
    else if (node.st_mode & 0120000)
    {
        node_type = "link";
    }
    if (S_ISDIR(node.st_mode)) {
        node_type = "dir";
    }

    std::cout << "fs node type : " << node_type << "  node mtime : " << node.st_mtime << std::endl;
    */
    //system("/Applications/nginx/versions/current/sbin/nginx -s quit");
            //system("ln -s ");
            //system("/Applications/nginx/versions/current/sbin/nginx");
            /*
    if (strcmp(event->name, "quit") == 0) {
        
            
        

    }
    else if (strcmp(event->name, "boot") == 0)
    {
    
    }
    */
    return 0;
}

int fs_node::watch(fs_event_callback callback, const unsigned int& depth) {
    if(!implement || !((fs_node_implement*)implement)->path.length() || !((fs_node_implement*)implement)->events) return -1;

    if(((fs_node_implement*)implement)->fd = inotify_init() < 0){ return -1;}

    while (!watch_nodes_opable) {}
    watch_nodes_opable = false;
    watch_nodes.push_back(((fs_node_implement*)implement)->fd);
    watch_nodes_opable = true;

    //wd = inotify_add_watch(fd, watch_path, IN_ALL_EVENTS);
    //wd = inotify_add_watch(fd, watch_path, IN_CLOSE_WRITE | IN_CREATE | IN_DELETE| IN_DELETE_SELF | IN_MOVE | IN_MOVE_SELF);
    if (((fs_node_implement*)implement)->wd = inotify_add_watch(((fs_node_implement*)implement)->fd, ((fs_node_implement*)implement)->path.c_str(), IN_ALL_EVENTS) < 0){
        return -1;
    }
    DIR* dir = opendir(((fs_node_implement*)implement)->path.c_str());
    if(dir){
        struct dirent* node = 0;
        while(node = readdir(dir))
        {
            struct stat _stat_;
            stat(node->d_name, &_stat_);
        }

        closedir(dir);
    }
    
    /** https://blog.csdn.net/zhanglei_admin/article/details/97636301
     struct inotify_event {
     int      wd;       Watch descriptor
     uint32_t mask;     Mask of events
     uint32_t cookie;   Unique cookie associating related events (for rename(2))
     uint32_t len;      Size of name field
     char name[];       Optional null-terminated name
     };

    .wd : 就是检测的对象的watch descriptor
    .mask : 检测事件的mask
    .cookie : 和rename事件相关。
    .len : name字段的长度。
    .name : 检测对象的name。
     */
    ((fs_node_implement*)implement)->events[sizeof(((fs_node_implement*)implement)->events) - 1] = 0;

    // EPOLL https://blog.csdn.net/ws6013480777777/article/details/85546313 逻辑整理
    while (unsigned int length = read(((fs_node_implement*)implement)->fd, ((fs_node_implement*)implement)->events,0) > 0)
    {
        unsigned int index = 0;

        while ((index += 1) * sizeof(inotify_event) < length)
        {
            struct inotify_event* e = ((inotify_event*)((fs_node_implement*)implement)->events[index * sizeof(inotify_event)]);
            // inotify_event filter
            // fs_event
            const fs_event ev;
            if (callback) callback(ev);
        }

        //memset(((fs_node_implement*)implement)->events,0,sizeof(((fs_node_implement*)implement)->events));

        //mkdir(0,0);
        //rmdir(0);
        //access(0,0);//int access(const char*, int)
    }

return 0; 
}

int fs_node::unwatch(...){
    return 0;
}

/** 
* Win32 Directory Change Notifications
* https://learn.microsoft.com/zh-cn/windows/win32/fileio/obtaining-directory-change-notifications?redirectedfrom=MSDN 
* https://learn.microsoft.com/zh-cn/sysinternals/downloads/procmon
* 
* find out event types
  for (int i = 0; i < EVENT_NUM; i++)
  {
      if ((current_event->mask >> i) & 1)
      {
          if (current_event->len > 0)
          //fprintf(stdout, "%s --- %s\n", event->name, event_str[i]);
          std::cout << "event ocurred : " << current_event->name << "    " << event_str[i] << std::endl;
          else
              std::cout << "event ocurred : " << current_event[i] << std::endl;
      }
  }
*/