# 信号相关
#     http://gityuan.com/2015/12/20/signal/
# Socket相关
# TIME_WAIT : tcp_tw_reuse https://blog.csdn.net/mystyle_/article/details/119176327
#             setsockopt   https://blog.csdn.net/sinc00/article/details/46989777  https://www.cnblogs.com/cthon/p/9270778.html

# namespace https://zhuanlan.zhihu.com/p/441238885

# oakley : https://baike.baidu.com/item/OAKLEY/20831015?fromModule=lemma_inlink
# DH :https://baike.baidu.com/item/DH/4895102?fr=aladdin
# IETF RFC3526 文档 : https://blog.csdn.net/u013837825/article/details/123749636

# eBPF : https://ebpf.io/what-is-ebpf
# IETF : https://www.ietf.org/
#  RFC : https://www.rfc-editor.org/

# HTTP/HTTPS/HSTS/HTTP2/QUIC
#    https://blog.csdn.net/m0_37621078/article/details/105662287 图解HTTP + HTTPS + HSTS
#    https://zhuanlan.zhihu.com/p/405387352 QUIC 协议详解

# SSL/TLS/HTTPS:
# 索引:
#     OpenSSL : https://www.openssl.org/docs/ https://wiki.openssl.org/index.php/Main_Page
#               OpenSSL configure https://blog.csdn.net/shb8845369/article/details/100833825
#                       config & configure https://zhuanlan.zhihu.com/p/359472418
# CA证书签发流程：https://www.cnblogs.com/xdyixia/p/11610102.html
# OpenSSL 专家:
# https://www.junmajinlong.com/linux/index/#blogopenssl from https://www.cnblogs.com/f-ck-need-u/p/7113610.html
# https://jamielinux.com/
# https://www.agwa.name/
# https://halfrost.com/
# 协议:
#     https://blog.csdn.net/m0_37621078/article/details/106028622
# 示例程序
#     https://blog.csdn.net/qq_42370809/article/details/126352996
#     https://www.cnblogs.com/codestack/p/14812562.html
#     https://www.cnblogs.com/LittleHann/p/3741907.html
# 双向验证:
#     https://www.ibm.com/docs/en/ztpf/2020?topic=apis-ssl-ctx-load-verify-locations
#     https://www.ibm.com/docs/en/ztpf/2020?topic=apis-ssl-ctx-load-set-client-ca-file
#     https://www.cnblogs.com/coding-my-life/p/13910569.html
#     https://www.cnblogs.com/lsdb/p/9391979.html
#     ssl_use_certificate_chain_file https://support.dnsimple.com/articles/what-is-ssl-certificate-chain/
# 密码套件：
#     https://learn.microsoft.com/zh-cn/azure/active-directory-b2c/https-cipher-tls-requirements
#     https://baike.baidu.com/item/%E5%AF%86%E7%A0%81%E5%A5%97%E4%BB%B6/22657345
#     https://blog.csdn.net/H_O_W_E/article/details/125247938 理解 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
# 证书相关
#     https://www.feistyduck.com/library/openssl-cookbook/online/
#     https://www.cnblogs.com/kyrios/p/tls-and-certificates.html
#     https://www.cnblogs.com/littleatp/p/5878763.html
#     https://www.cnblogs.com/lzpong/p/10450293.html CA ROOT
#     https://www.cnblogs.com/sparkdev/p/10369313.html
#     https://jamielinux.com/docs/openssl-certificate-authority/introduction.html
#     浏览器/操作系统 导入信任证书
# Handshake 与 SNI：
#     https://www.rfc-editor.org/rfc/rfc7685
#     https://www.ietf.org/rfc/rfc6066.txt
#     https://serializethoughts.com/2014/07/27/dissecting-tls-client-hello-message
#     https://blog.csdn.net/NGU_Jq/article/details/122952729 -- https://github.com/CChuancey/Protocol_Restoration/blob/master/src/tls.cpp
#     https://tls12.xargs.org/
#     https://commandlinefanatic.com/cgi-bin/showarticle.cgi?article=art059  A walk-through of an SSL handshake
#     https://www.wiley.com/en-us/Implementing+SSL+TLS+Using+Cryptography+and+PKI-p-9780470920411 mplementing SSL / TLS Using Cryptography and PKI
#     https://wiki.osdev.org/TLS_Handshake#:~:text=Like%20for%20a%20TCP%20connection%2C%20a%20TLS%20connection,only%20send%20one%20supported%20cipher%20suite%20%28code%200x0033%29
#     client_hello_cb SSL_CTX_set_client_hello_cb https://www.openssl.org/docs/man1.1.1/man3/SSL_CTX_set_tlsext_servername_callback.html
#     get_session_cb
#     servername_cb 
#     cert_cb
#     openssl callbacks
#     openssl 随机数 和 密码 生成
#     SSL_CIPHER https://blog.csdn.net/qq_31442743/article/details/111995728
# SSL Socket https://wiki.openssl.org/index.php/Simple_TLS_Server
#            https://wiki.openssl.org/index.php/Category:Examples
#            https://halfrost.com/https-extensions/
#            https://www.cnblogs.com/jiangzhaowei/p/9341466.html
#            https://www.jianshu.com/p/527cc683b2be
#            https://blog.csdn.net/mrpre/article/details/77867439
#            https://www.cloudflare-cn.com/learning/ssl/what-happens-in-a-tls-handshake/

# tls 扩展 SNI  https://blog.csdn.net/justinzengTM/article/details/105346262
#  SNI扩展是用来解决一台服务器绑定多个域名，申请了多张证书，在建立连接的身份验证阶段服务器因为不知道客户端浏览器访问的是哪个域名，所以无法判断该发送哪个证书的问题。即服务器使用到了“虚拟主机”的场景
#  https://www.cnblogs.com/sxiszero/p/11153112.html
#  https://blog.csdn.net/danielzhou1025/article/details/114115151 SSL_set_cipher_list
#  https://strawberrytree.top/blog/2020/09/17/%E4%BD%BF%E7%94%A8openssl%E4%BD%BF%E7%94%A8%E5%A4%96%E9%83%A8psk%E8%BF%9B%E8%A1%8C%E6%8F%A1%E6%89%8B%EF%BC%88tls1-3%EF%BC%89/
#  双向认证：SSL_CTX_load_verify_locations
#  https://blog.csdn.net/wangsifu2009/article/details/7569566
#  https://www.cnblogs.com/lsdb/p/9391979.html
#  双向认证模式:
#  https://blog.csdn.net/u013919153/article/details/78616737
# 
#  https://halfrost.com/https-begin/
#  https://strawberrytree.top/blog/2020/09/28/%E4%BD%BF%E7%94%A8openssl%E5%86%85%E7%BD%AE%E7%9A%84%E5%AF%86%E7%A0%81%E7%AE%97%E6%B3%95%E5%AE%9A%E4%B9%89%E6%96%B0%E7%9A%84%E5%8A%A0%E5%AF%86%E5%A5%97%E4%BB%B6-tls1-3/
#
#  X.509 https://zhuanlan.zhihu.com/p/69995175
#  TLS协议中PRF和TLS1.3中的HKDF https://blog.csdn.net/mrpre/article/details/80056618 TLS 1.3协议详解：https://blog.csdn.net/mrpre/article/details/81532469

#IP协议栈:
#    https://www.cnblogs.com/feng9exe/p/7000162.html
#LINUX网络设备:https://www.jianshu.com/p/2ca7d8d5bf1e

# syscall
#     https://man7.org/linux/man-pages/man2/init_module.2.html
# ptrace
#     https://www.cnblogs.com/mysky007/p/11047943.html

# Zero Copy:
# TLS sendfile
#    kTSL (Kernel TLS) https://www.kernel.org/doc/html/latest/networking/tls.html
#                      https://www.kernel.org/doc/html/latest/networking/tls-offload.html
#    https://zhuanlan.zhihu.com/p/464614801
#    https://words.filippo.io/playing-with-kernel-tls-in-linux-4-13-and-go/
#    https://blog.csdn.net/dog250/article/details/53868519 https://lwn.net/Articles/666509 https://github.com/eduardsui/tlse
#    getsockopt(ktls_fd, AF_KTLS, KTLS_GET_IV_RECV, ...);
#    SSL_read(tcp_fd, ...);
#    https://github.com/ktls/af_ktls
#    https://github.com/ktls/af_ktls-tool
#    https://github.com/fridex/af_ktls/
#    ULP (Kernel Upper Layer Protocol)https://blog.csdn.net/ssyyjj88/article/details/78233268
#    https://www.imwxz.com/posts/afcd9112.html
#    senfile mmap splice tee https://zhuanlan.zhihu.com/p/592397046
#    sendfile 原理 https://www.cnblogs.com/1dan/p/15650798.html
# libc hook syscall hook
#    eBPF syscall hook https://bbs.kanxue.com/thread-274901.htm
#    system call table https://github.com/A7um/syscallhook
#    Kernel-Symbol-Table https://www.cnblogs.com/LittleHann/p/4127096.html
#                        https://en.wikipedia.org/wiki/System.map
#                        https://mairacanal.github.io/kernel-symbol-table-compilation-more/
#                        https://www.oreilly.com/library/view/linux-device-drivers/0596000081/ch02s03.html
#    Linux下Hook方式汇总 https://zhuanlan.zhihu.com/p/198960996

# linux kernel api https://deepinout.com/linux-kernel-api/linux-kernel-api-filesystem/linux-kernel-api-vfs_fstat.html
# linux vfs 示例 https://www.cnblogs.com/wangzahngjun/p/5365310.html
# linux crypto   https://www.kernel.org/doc/html/v4.12/crypto/index.html https://www.kernel.org/doc/html/v4.12/crypto/userspace-if.html#zero-copy-interface

# 内存管理
#     mm syscall https://blog.csdn.net/u011011827/article/details/111666285

# 代理协议 proxy_protocol https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt FROM https://www.jianshu.com/p/cc8d592582c9
