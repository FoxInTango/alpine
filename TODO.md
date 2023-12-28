1,libmodel -- ModelElementIMPL 检查其他问题 关于定位分配的问题
-2,关于多线程 与 多进程 的思路整理
-3,Makefile 参考 libarguments 整理 libpath runpath相关问题
-4,对Makefile application library module 的 version与路径问题进行整理
-5,对kernel中使用stl进行测试，以确定是否自写容器类 结果:需要运行时支持
-6,内核模块静态库问题，是否与用户空间一致 : 貌似不行，采用 Makefile直接编译
7,梳理const逻辑问题[成员函数与调用传参],特别是libmodel中相关。
8,libcpp array 拼接时的 index & address 处理
9,libmodel -- ModelElementIMPL array & map removeSubelement 返回值处理一致化 -- Error .Error 应做代码化处理，错误信息统一存储，根据代码进一步查询，并考虑多线程 和 进程间 统一规划。
    Error
10,考虑 libstream 与 libmatch 取消的问题
11,进程间通信的归一化问题，以及进程间 RTTI问题的解决
12,libstring Endian问题处理
13,整理代码规范 -- 类构成 指针 拷贝赋值 等问题
14,关于C++虚拟成员[函数]表的进一步了解与整理
15,default ld
16,ModelElementIMPL Array 导致内存访问问题 -- Array 构造函数 this->elements->setIndex(0) 导致
17,添加shell libcpp/src/shell.cpp
18,关于基类的功能与作用
19,Member的赋值与取值监听
20,libmodel ModelElement 取消impl机制

删除 libmm 移入 libcpp


libmatch:
libfs : file stream, file,dir,link:create delete move rename etc
git@github.com:FoxInTango/libfs.git
libelf:
git@github.com:FoxInTango/libelf.git

libcry & libtls 

libnn : RNN DNN CNN

libcv
libav
libui
libscene
libpc parallel computing

IDE : 
    visual studio 
        输出目录整理
        生成后复制                   