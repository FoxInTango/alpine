# 信号相关
#     http://gityuan.com/2015/12/20/signal/
# Socket相关
#     TIME_WAIT : tcp_tw_reuse https://blog.csdn.net/mystyle_/article/details/119176327
#                 setsockopt   https://blog.csdn.net/sinc00/article/details/46989777  https://www.cnblogs.com/cthon/p/9270778.html

# Zero Copy:
# libc hook syscall hook
#    eBPF syscall hook https://bbs.kanxue.com/thread-274901.htm
#    system call table https://github.com/A7um/syscallhook
#    Kernel-Symbol-Table https://www.cnblogs.com/LittleHann/p/4127096.html
#                        https://en.wikipedia.org/wiki/System.map
#                        https://mairacanal.github.io/kernel-symbol-table-compilation-more/
#                        https://www.oreilly.com/library/view/linux-device-drivers/0596000081/ch02s03.html
#    Linux下Hook方式汇总 https://zhuanlan.zhihu.com/p/198960996
#                        https://blog.csdn.net/lionzl/article/details/100539060
#                        https://blog.csdn.net/faxiang1230/article/details/103370497 splicing http://www.ksplice.com/doc/ksplice.pdf
#                                                                                              https://poppopret.org/2013/01/07/suterusu-rootkit-inline-kernel-function-hooking-on-x86-and-arm/#arm

# 内存管理
#     mm syscall https://blog.csdn.net/u011011827/article/details/111666285

# 代理协议 proxy_protocol https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt FROM https://www.jianshu.com/p/cc8d592582c9
#

# Linux 内核：
    进程调度 https://deepinout.com/linux-kernel-api/linux-kernel-api-process-scheduling/linux-kernel-api-wake_up_process.html
        内核空间:kthread_create kthread_stop wake_up_process
        用户空间:schedule();
        进程调度相关：
            https://www.apispace.com/news/post/27165.html  int nice(int inc);nice value getpriority/setpriority函数 sched_getaffinity和sched_setaffinity
            getrlimit()  setrlimit()
           资源限制 http://e.betheme.net/article/show-1355487.aspx?action=onClick 在Linux系统中，进程资源限制分为软限制（soft limit）和硬限制（hard limit）两种。
# 内核导出表:https://heapdump.cn/article/524745
# syscall
#     https://man7.org/linux/man-pages/man2/init_module.2.html
#     https://zhuanlan.zhihu.com/p/344311940 系统调用分类表
#     https://onestraw.github.io/linux/lkm-and-syscall-hook/
#     https://zhuanlan.zhihu.com/p/198960996
#         但是在linux内核5.x里，entrySYSCALL64的实现改了，不再试图用过call syscalltable[index]的方式进行系统调用，而是引入了一个dosyscall64的符号。具体的看下面截取的源码
#     arm64 https://blog.csdn.net/weixin_45030965/article/details/129203081
# 添加 系统调用 https://www.kernel.org/doc/html//v6.5-rc7/process/adding-syscalls.html
# syscall table : 
#     https://blog.csdn.net/weixin_42915431/article/details/106507066 kallsyms_lookup_name | system.map | PAGE_OFFSET -> NR_close
#     https://www.cnblogs.com/bittorrent/p/3804141.html 读取/proc/kallsyms 
#           https://www.cnblogs.com/viiv/p/16648241.html#Systemmap_prockallsyms_181
#           https://zhuanlan.zhihu.com/p/480934356 设置 sys_call_table 数组为可写状态
#     https://blog.csdn.net/q759451733/article/details/124105195 不同版本 方式 kprobe
# syscall 传参:
#     https://blog.csdn.net/weixin_42308335/article/details/116859327 内核与用户空间 内存访问
#     https://zhuanlan.zhihu.com/p/446785414 asmlinkage 与 寄存器传参 在内核态直接写入用户态内存 copy_to_user 
#     https://blog.csdn.net/Haomione/article/details/122217131 copy_to_user copy_from_user
#     https://zhuanlan.zhihu.com/p/102957159 copy_to_user & copy_from_user 的说明
#     https://www.cnblogs.com/xinghuo123/p/13796932.html linux系统调用-SYSCALL_DEFINEx详解
# ptrace & ptrace
#     https://www.cnblogs.com/mysky007/p/11047943.html

# 动态添加系统调用:
# https://blog.csdn.net/CrazyHeroZK/article/details/87359529  使用系统废弃的系统调用号
# https://blog.csdn.net/qq_34258344/article/details/103228607 同上 
# __NR_syscall
# 关于用户向内核传递数据的问题:固定一个发送地址空间，固定一个接收地址空间，在系统调用时检查该空间 copy_to_user & copy_from_user
# https://blog.csdn.net/weixin_45930312/article/details/126255496 采用既有系统调用(文件系统 read/write)向内核传递可读写用户空间地址
# 内存映像 mmap
# https://blog.csdn.net/cwdben/article/details/119919094 linux内核模块与用户程序共享内存

# 内核热补丁 https://cloud.tencent.com/developer/article/1646414 klp_enable_patch 在内核代码中，就有热补丁的例子在samples/livepatch目录下

# kernel & userspace 通信:
# 1,syscall
# 2,netlink
# 3,VFS

# 方案: 1，修改编译内核 2，sys_call_table 3，ftrace 4，lsm 5，ptrace
# 获取内核版本 https://gitlab.tnichols.org/tyler/syscall_table_hooks/blob/master/src/hooks.c
# VFS 在内核的应用 https://www.cnblogs.com/cbryge/p/6066978.html

# 内核模块间通信:
#    深入Linux内核架构 -- P393 依赖关系与导出符号 
#        https://blog.csdn.net/qq_37858386/article/details/78444168 export 与 extern

# kernel crypto  https://www.kernel.org/doc/html/latest/crypto/index.html

# 关于内存管理 new/delete 运算符重载得反面意见:
#    https://blog.csdn.net/Solstice/article/details/6198937
#    意见值得重视，但问题并非不能解决 -- 无论如何，对外部使用者来说，为了使用某个功能而造成默认操作被不知情或被强迫地修改，是一个大问题。
#    内核内存分配 需求与方式的类型 
#        https://zhuanlan.zhihu.com/p/51660182

# C++ in kernel : https://olegkutkov.me/2019/11/10/cpp-in-linux-kernel/
# sudo insmod kernel_syscall_hooks
# sudo rmmod kernel_syscall_hooks
# dmesg | tail -n20

# 虚拟文件系统:
#     深入Linux内核架构 -- P542
#     kernfs 
#         https://blog.csdn.net/sinat_32960911/article/details/128582089 关于kernfs的说明:sysfs功能代码的抽离
#     https://www.kernel.org/doc/html/latest/filesystems/index.html  Filesystems in the Linux kernel
#     https://www.kernel.org/doc/html/latest/filesystems/mount_api.html#overview
#     sysfs
#     configfs https://www.kernel.org/doc/html/latest/filesystems/configfs.html

#  RFC : https://www.rfc-editor.org/

# GIT 多远程 https://zhuanlan.zhihu.com/p/82388563#

# UTF-8
# http://www.ruanyifeng.com/blog/2007/10/ascii_unicode_and_utf-8.html
# https://blog.csdn.net/qq_32252957/article/details/83054152

# https://www.linux.com/training-tutorials/splice-hooking-unix-systems/

# ANSI escape codes :https://notes.burke.libbey.me/ansi-escape-codes/

# 红黑树:
#     https://zh.unionpedia.org/i/%E9%B2%81%E9%81%93%E5%A4%AB%C2%B7%E6%8B%9C%E5%B0%94  鲁道夫·拜尔
#     https://blog.csdn.net/qq_35987777/article/details/107572946 情况分类
#     https://www.cnblogs.com/skywang12345/p/3245399.html 情况分类
#     https://blog.csdn.net/qq_40843865/article/details/102498310 删除操作  TODO -- 检查各种情况下的无子节点情况
#     https://www.cnblogs.com/yinbiao/p/10732600.html 这位朋友看起来很厉害
#     https://www.geeksforgeeks.org/introduction-to-red-black-tree/ 所以说很多东西，我们都是知其然不知其所以然，内部的很多规律定则，我们并没有搞清楚，只是照葫芦画瓢 
#     https://www.cnblogs.com/yinbiao/p/10732600.html
