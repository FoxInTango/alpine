#include <stdio.h>
#include <unistd.h>

typedef struct {
    const char* path;
    const char* extention;
}source;
typedef struct _task{
    source** sources;
    _task**  tasks;
}task;
/*
task main_task = {
          {"main.cpp","cpp"},
          {"main.cpp","cpp"},
{"main.cpp","cpp"},
{"main.cpp","cpp"}
};

*/
static void trave_dir(char* path);

int main(int argc,char** argv){
    printf("Mit OK.\n");
    
    char cwd[256];
    getcwd(cwd,256);
    printf("CWD : %s\n",cwd);
    trave_dir(cwd);
    return 0;
}

#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <dirent.h>
#include <sys/stat.h>

#define MAX_PATH_LEN (256)

#include <vector>
#include <string>
static std::vector<char*> dir_stack;
static void trave_dir(char* path) {
    DIR *d = NULL;
    struct dirent *dp = NULL; /* readdir函数的返回值就存放在这个结构体中 */
    struct stat st;    
    char p[MAX_PATH_LEN] = {0};
    
    if(stat(path, &st) < 0 || !S_ISDIR(st.st_mode)) {
        printf("invalid path: %s\n", path);
        return;
    }

    if(!(d = opendir(path))) {
        printf("opendir[%s] error: %m\n", path);
        return;
    }

    dir_stack.push_back(path);

    while((dp = readdir(d)) != NULL) {
        /* 把当前目录.，上一级目录..及隐藏文件都去掉，避免死循环遍历目录 */
        if((!strncmp(dp->d_name, ".", 1)) || (!strncmp(dp->d_name, "..", 2)))
            continue;

        snprintf(p, sizeof(p) - 1, "%s/%s", path, dp->d_name);
        stat(p, &st);
        if(!S_ISDIR(st.st_mode)) { // 判断元素是否存在
            char* arguments[2] = {0,0};

//            arguments[0] = const_cast<char*>((std::string(*(dir_stack.end()-1)) + '/' + dp->d_name).c_str() + + ' ' + '-' + 'o'  + ' ' + (std::string(*(dir_stack.end()-1)) + '/' + dp->d_name + ".o"));
            execve("gcc", arguments,NULL);
            printf("%s\n", (std::string(*(dir_stack.end()-1)) + '/' + dp->d_name).c_str());
        } else {
            printf("%s\n", (std::string(*(dir_stack.end()-1)) + '/' + dp->d_name).c_str());
            trave_dir(p);
        }
    }
    closedir(d);
    dir_stack.pop_back();
    return;
}
