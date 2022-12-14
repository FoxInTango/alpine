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
#include <vector>
#include <map>
#include <set>
#include <fstream>
#include <codecvt>
#include <iostream>
#include <string>
#include <cstring>
#include <cassert>
#include <locale>
#include <signal.h>
#include <sched.h>
#include <libast/libast.h>
#include <libarguments/libarguments.h>
using namespace foxintango;

#include "alpine.h"

#ifdef OPENSSL
#include <tls.h>
#endif

class Object{
public:
     Object(){}
    ~Object(){}
};

void* create_object(Model m) {
    return new Object();
}

int http_server_init();
tls* tls_server_init(int socket);

#ifdef USE_VIRTUAL_METHOD
int Alpine::onevent(int event){ return event; } 
#else
int onevent(const Alpine& alpine, int e) { return e; }
#endif

void on_signal(int sig);
int main(int argc, char* argv[]) {
    signal(SIGINT,on_signal);
    std::cout << "Alpine Init: " << alpine.init(arguments(argc, argv)) << std::endl;
#ifdef USE_VIRTUAL_METHOD
    std::cout << "alpine.onevent :" << alpine.onevent(10) << std::endl;
#else
    alpine.onevent = onevent;
    std::cout << "alpine.onevent :" << alpine.onevent(alpine, 10) << std::endl;
#endif
    alpine.watch("","");
    Model m;
    delete (Object*)create_object(m);
    http_server_init();
    return 0;
}

#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <thread>
#include <chrono>
#include <atomic>
#include <fcntl.h>
#include <sys/sendfile.h>

int listen_sock = 0;
void on_signal(int sig){
    close(listen_sock);
    std::cout << "Caught signal " << sig << std::endl;
    // Terminate program
    exit(sig);
}

typedef struct _remote_session{
    bool handshaked = false;
    int socket;
    int port;
    std::string ip;
    time_t birthtime;
    time_t lastdance;
}remote_session;

typedef std::vector<remote_session> ALPINE_session_array;
ALPINE_session_array ALPINE_sessions;
std::atomic<bool> ALPINE_sessions_locked(false);

char* response = "HTTP/1.1 200 OK\r\nServer: Alpine/1.0.0 (Linux)\r\nContent-Type:text/html\r\nConnection:keep-alive\r\n";
char* length = "Content-Length:";
char* br =  "\r\n\r\n";
char* content = "<html><body>Alpine</body><html>";
void deal_http_event(int index){
    std::string sni;
    tls* client = 0;
    char buffer[2048];
    memset(buffer, 0, 2048);
    /** SNI 
     *  https://www.openssl.org/docs/ 
     *  https://www.feistyduck.com/library/openssl-cookbook/online/ 
     *  https://serializethoughts.com/2014/07/27/dissecting-tls-client-hello-message
     *  https://blog.csdn.net/NGU_Jq/article/details/122952729
     *  https://blog.csdn.net/qq_42370809/article/details/126352996
     *  openssl ?????????SNI 
     *  client_hello_cb
     *  get_session_cb
     *  servername_cb 
     *  cert_cb
     *  https://jingsam.github.io/2018/10/12/lets-encrypt.html
     * 
     *  TIME_WAIT : tcp_tw_reuse https://blog.csdn.net/mystyle_/article/details/119176327
     *  https://blog.csdn.net/sinc00/article/details/46989777 setsockopt https://www.cnblogs.com/cthon/p/9270778.html
     */
    
    while (true) {
        if(ALPINE_sessions_locked.load()) continue;
        ALPINE_sessions_locked.store(true);
        for (unsigned int i = 0; i < ALPINE_sessions.size(); i++) {
            //std::cout << "session count : " << ALPINE_sessions.size() << std::endl;
            remote_session& session = ALPINE_sessions.at(i);
            int readlen = read(session.socket, &buffer, 2048);
            if(readlen > 0){
                session.lastdance = time(NULL);

                char filepath[32];
                memset(filepath,0,32);
                sprintf(filepath, "%d",time(NULL));
                /*
                for(int i = 0;i < readlen;i ++){
                    std::cout << "buffer " << i << " : " << buffer[i] << std::endl;
                }
                */
                std::cout << "session count : " << ALPINE_sessions.size() << std::endl;
                std::cout << "content readed from ip: " << session.ip << " with port : " << session.port << "  " << buffer << std::endl;

                write(session.socket, response, strlen(response));
                write(session.socket, length, strlen(length));
                int l = strlen(content);
                char ls[8];
                sprintf(ls, "%d", l);
                write(session.socket, ls, strlen(ls));
                write(session.socket, br, strlen(br));
                write(session.socket, content, strlen(content));
                
            } else if(readlen == 0 ){
                //std::cout << "readlen == 0 read error : " << strerror(errno)<< std::endl;
                if (time(NULL) - session.lastdance > 5) {
                    close(session.socket);
                    ALPINE_sessions.erase(ALPINE_sessions.begin() + i);
                }
            } else if(readlen < 0) {
                //std::cout << "readlen <  0 read error : " << strerror(errno) << std::endl;
                // 
                if(time(NULL) - session.lastdance > 5) {
                    close(session.socket);
                    ALPINE_sessions.erase(ALPINE_sessions.begin() + i);
                }
            }
            memset(buffer, 0, 2048);
        }
        ALPINE_sessions_locked.store(false);

        /*
        sni += &buffer[129];
        std::cout << "SNI : " << sni << std::endl;

        char handshake_type = buffer[0];
        char ssl_version_major = buffer[1];
        char ssl_version_minor = buffer[2];
        int length = 0;
        char* l = (char*)&length;
        l[0] = buffer[4];
        l[1] = buffer[3];
        std::cout << "length readed : " << readlen << " ssl_version_major : " << (int)ssl_version_major << " ssl_version_minor : " << (int)ssl_version_minor << " message length : " << length << std::endl;
        client = tls_server_init(session.socket);
        tls_handshake(client);
        std::cout << "tls_handshake error : " << tls_error(client) << std::endl;

        int readtls = tls_read(client, &buffer, 2048);
        std::cout << "client request: " << (char*)&buffer << std::endl;

        tls_write(client, r_status, strlen(r_status));
        */
    }
    //tls_close(client);
    //close(session.socket);
}

int http_server_init(){
    std::thread t(deal_http_event, 0);
    t.detach();

    listen_sock = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in listen_addr;
    memset(&listen_addr,0,sizeof(sockaddr_in));
    listen_addr.sin_family = AF_INET;
    listen_addr.sin_port   = htons(80);
    listen_addr.sin_addr.s_addr = inet_addr("0.0.0.0");

    bind(listen_sock,(struct sockaddr*)&listen_addr,sizeof(listen_addr));

    listen(listen_sock,0);

    while(true){
        if(ALPINE_sessions_locked.load()) continue;
        sockaddr  remote_address;
        socklen_t remote_count = 1024;
        
        if(int remote_fd = accept(listen_sock, &remote_address, &remote_count)) {
            ALPINE_sessions_locked.store(true);
            sockaddr_in* sin = (sockaddr_in*)&remote_address;
            remote_session session;
            session.socket = remote_fd;
            fcntl(session.socket, F_SETFL, fcntl(session.socket, F_GETFL) | O_NONBLOCK);
            session.ip = inet_ntoa(sin->sin_addr);
            session.port = sin->sin_port;
            std::cout << "new client connected : " << session.ip << " with port : " << session.port << std::endl;
            session.birthtime = time(NULL);
            session.lastdance = session.birthtime;
            ALPINE_sessions.push_back(session);
            ALPINE_sessions_locked.store(false);
        }
    }
    close(listen_sock);
}
struct test_versions {
    char* client;
    char* server;
};

static struct test_versions tls_test_versions[] = {
    {"tlsv1.3", "all"},
    {"tlsv1.2", "all"},
    {"tlsv1.1", "all"},
    {"tlsv1.0", "all"},
    {"all", "tlsv1.3"},
    {"all", "tlsv1.2"},
    {"all", "tlsv1.1"},
    {"all", "tlsv1.0"},
    {"tlsv1.3", "tlsv1.3"},
    {"tlsv1.2", "tlsv1.2"},
    {"tlsv1.1", "tlsv1.1"},
    {"tlsv1.0", "tlsv1.0"},
};

/** $servertest_bin $srcdir/server.pem $srcdir/server.pem $srcdir/ca.pem
 cafile = argv[1];
 certfile = argv[2];
 keyfile = argv[3];
 */

char* cafile   = "./etc/tls/server.crt";
char* certfile = "./etc/tls/foxintango.me.crt";
char* keyfile  = "./etc/tls/foxintango.me.key";
char* ciphers  = "default";//tls_config.c tls_config_set_ciphers
#ifdef OPENSSL
tls* tls_server_init(int socket){

    struct tls_config* client_cfg, * server_cfg;
    struct tls *client, *server;
    int failure = 0;
    uint32_t protocols;
    if ((server = tls_server()) == NULL)
        std::cout << "server create filed." << std::endl;
   
    if ((server_cfg = tls_config_new()) == NULL)
        std::cout << "failed to create tls server config" << std::endl;
    if (tls_config_parse_protocols(&protocols, tls_test_versions[4].server) == -1)
        std::cout << "failed to parse protocols: %s" << tls_config_error(server_cfg) << std::endl;
    if (tls_config_set_protocols(server_cfg, protocols) == -1)
        std::cout << "failed to set protocols: %s" << tls_config_error(server_cfg) << std::endl;
    if (tls_config_set_ciphers(server_cfg, ciphers) == -1)
        std::cout << "failed to set ciphers: %s" << tls_config_error(server_cfg) << std::endl;
    if (tls_config_set_keypair_file(server_cfg, certfile, keyfile) == -1)
        std::cout << "failed to set keypair: %s" << tls_config_error(server_cfg) << std::endl;
    /*
    if (tls_config_set_ca_file(server_cfg, cafile) == -1)
        std::cout << "failed to set ca: %s" << tls_config_error(client_cfg) << std::endl;
    */
    if (tls_configure(server, server_cfg) == -1)
        std::cout << "failed to configure server: %s" << tls_error(server) << std::endl;
    tls_config_free(server_cfg);
    tls_accept_socket(server,&client,socket);
    return client;

    // socket create
    // tls create 
    // tls configure
    // tls accept
    // tls handshake
    // tls read
    // tls write
}
#endif


/**
 *    MusicXML
 *    HTTPS   rfc
 *    SSL/TLS rfc
 */