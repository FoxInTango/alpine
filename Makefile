CC=g++
AS=as
AR=ar
LD=ld

define add_module
endef

define del_module
endef

define config
endef

PLATFORM_ARCH         = $(shell uname -s)
PLATFORM_ARCH_LINUX   = Linux
PLATFORM_ARCH_DARWIN  = Darwin
PLATFORM_ARCH_FREEBSD = FreeBSD

MK_FALSE = 0
MK_TRUE  = 1
# 输出类型配置
TARGET_TYPE_BIN = $(MK_TRUE)
TARGET_TYPE_LIB = $(MK_FALSE)
TARGET_TYPE_DLL = $(MK_FALSE)

# ** 项目配置区 **
#
#    输出文件名称
TARGET_NAME     = alpine
#    输出文件后缀 [自动判别]
TARGET_BIN_EXT = 
TARGET_LIB_EXT_STATIC  =
TARGET_LIB_EXT_DYNAMIC = 
#    安装位置
INSTALL_PATH_PREFIX = /Applications/alpine/versions/1.0.0
#INSTALL_PATH_PREFIX = /usr/local

TARGET_BIN_DIR := ./bin
TARGET_LIB_DIR := ./lib

PROJECT_ROOT = .
PROJECT_DIR_BESIDES  = \(
PROJECT_DIR_BESIDES += -path ./.git
PROJECT_DIR_BESIDES += -o -path ./libcpp
PROJECT_DIR_BESIDES += -o -path ./libstring
PROJECT_DIR_BESIDES += -o -path ./liburl
PROJECT_DIR_BESIDES += -o -path ./libstream
PROJECT_DIR_BESIDES += -o -path ./libast
PROJECT_DIR_BESIDES += -o -path ./libecho
PROJECT_DIR_BESIDES += -o -path ./libmodel
PROJECT_DIR_BESIDES += -o -path ./libmodule
PROJECT_DIR_BESIDES += -o -path ./libevent
PROJECT_DIR_BESIDES += -o -path ./libfsevent
PROJECT_DIR_BESIDES += -o -path ./libioevent
PROJECT_DIR_BESIDES += -o -path ./libvm
PROJECT_DIR_BESIDES += -o -path ./libes
PROJECT_DIR_BESIDES += -o -path ./libarguments
PROJECT_DIR_BESIDES += -o -path ./libmit
PROJECT_DIR_BESIDES += -o -path ./libraries
PROJECT_DIR_BESIDES += -o -path ./modules
PROJECT_DIR_BESIDES += -o -path ./obj
PROJECT_DIR_BESIDES += -o -path ./bin
PROJECT_DIR_BESIDES += -o -path ./lib
PROJECT_DIR_BESIDES += -o -path ./man
PROJECT_DIR_BESIDES += -o -path ./.trash
PROJECT_DIR_BESIDES += \)
PROJECT_DIRS   = $(shell find $(PROJECT_ROOT) $(PROJECT_DIR_BESIDES) -prune -o -type d -print)

TARGET_HEADERS = $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.h))

TARGET_SOURCES_AS  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.s))
TARGET_OBJECTS_AS  += $(patsubst %.s,%.o,$(TARGET_SOURCES_AS))
TARGET_SOURCES_CC  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.c))
TARGET_OBJECTS_CC  += $(patsubst %.c,%.o,$(TARGET_SOURCES_CC))                        # $(patsubst %.cpp,${TARGET_OBJECTS_DIR}/%.o,$(notdir ${TARGET_SOURCES}))
TARGET_SOURCES_PP  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.cpp))
TARGET_OBJECTS_PP  += $(patsubst %.cpp,%.o,$(TARGET_SOURCES_PP))

TARGET_HEADER_DIRS += $(foreach dir,$(PROJECT_DIRS),-I$(dir))                         # $(wildcard $(TARGET_HEADERS_DIR)/*.h)

# 链接库配置
TARGET_LD_FLAGS    = -L ./lib

# 需要链接的库  -lstring -lurl
TARGET_LIBS = -lioevent -lfsevent -lmit -lc -lstdc++ -lcpp -lstream -last -lecho -lmodel -lmodule -levent  -lvm -les -larguments 

ASFLAGS =
CCFLAGS = -c -fPIC -Wall -fvisibility=hidden -std=c++11 -I ./inc
PPFLAGS = -c -fPIC -Wall -fvisibility=hidden -std=c++11 -I ./inc

#OPENSSL=
ifdef OPENSSL
OPENSSL_INCLUDE_PATH = ${OPENSSL}/include
OPENSSL_LIBRARY_PATH = ${OPENSSL}/lib
TARGET_LD_FLAGS += -L ${OPENSSL_LIBRARY_PATH}
TARGET_LIBS += -ltls
CCFLAGS += -I ${OPENSSL_INCLUDE_PATH}
PPFLAGS += -I ${OPENSSL_INCLUDE_PATH}
CCFLAGS += -DOPENSSL
PPFLAGS += -DOPENSSL
endif
# 平台检测 -- DARWIN
ifeq (${PLATFORM_ARCH},${PLATFORM_ARCH_DARWIN})
    TARGET_BIN_EXT         :=
    TARGET_LIB_EXT_STATIC  := a
    TARGET_LIB_EXT_DYNAMIC := so
endif
# 平台检测 -- LINUX
ifeq (${PLATFORM_ARCH},${PLATFORM_ARCH_LINUX})
    TARGET_BIN_EXT         :=
    TARGET_LIB_EXT_STATIC  := a
    CTARGET_LIB_EXT_DYNAMIC := so
endif

# 平台检测 -- FreeBSD
ifeq (${PLATFORM_ARCH},${PLATFORM_ARCH_FreeBSD})
    TARGET_BIN_EXT         := 
    TARGET_LIB_EXT_STATIC  := a
    TARGET_LIB_EXT_DYNAMIC := so
endif

TARGETS = 

MAKE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKE_FILE_DIR  := $(dir $(MAKE_FILE_PATH))
export SUPER_LIBRARY_PATH = $(MAKE_FILE_DIR)/lib
export SUPER_INCLUDE_PATH = $(MAKE_FILE_DIR)/inc

ifeq ($(TARGET_TYPE_LIB),$(MK_TRUE))
TARGETS += ${TARGET_LIB_DIR}/${TARGET_NAME}.${TARGET_LIB_EXT_STATIC}
endif
ifeq ($(TARGET_TYPE_DLL),$(MK_TRUE))
TARGETS += ${TARGET_LIB_DIR}/${TARGET_NAME}.${TARGET_LIB_EXT_DYNAMIC}
endif
ifeq ($(TARGET_TYPE_BIN),$(MK_TRUE))
TARGETS += ${TARGET_BIN_DIR}/${TARGET_NAME}
endif

ALL : $(TARGETS)

${TARGET_BIN_DIR}/${TARGET_NAME}: $(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(CC) -fPIE -o $@ $^  -static $(TARGET_LIBS) ${TARGET_LD_FLAGS}

$(TARGET_OBJECTS_AS):%.o:%.s
	$(AS) ${ASFLAGS} $< -o $@
$(TARGET_OBJECTS_CC):%.o:%.c
	$(CC) ${CCFLAGS} $< -o $@
$(TARGET_OBJECTS_PP):%.o:%.cpp
	$(CC) ${PPFLAGS} $< -o $@
	
submodule:
	rm -rf ./inc/*
	rm -rf ./lib/*
	-cd ./libraries/libcpp       && $(MAKE) && cd ../.. && cp ./libraries/libcpp/lib/*        ./lib && mkdir inc/libcpp       && cp ./libraries/libcpp/src/*.h        ./inc/libcpp
	-cd ./libraries/libsystem    && $(MAKE) && cd ../.. && cp ./libraries/libsystem/lib/*     ./lib && mkdir inc/libsystem    && cp ./libraries/libsystem/src/*.h     ./inc/libsystem
	-cd ./libraries/libmm        && $(MAKE) && cd ../.. && cp ./libraries/libmm/lib/*         ./lib && mkdir inc/libmm        && cp ./libraries/libmm/src/*.h         ./inc/libmm
	-cd ./libraries/libstring    && $(MAKE) && cd ../.. && cp ./libraries/libstring/lib/*     ./lib && mkdir inc/libstring    && cp ./libraries/libstring/src/*.h     ./inc/libstring
	-cd ./libraries/liburl       && $(MAKE) && cd ../.. && cp ./libraries/liburl/lib/*        ./lib && mkdir inc/liburl       && cp ./libraries/liburl/src/*.h        ./inc/liburl
	-cd ./libraries/libmatch     && $(MAKE) && cd ../.. && cp ./libraries/libmatch/lib/*      ./lib && mkdir inc/libmatch     && cp ./libraries/libmatch/src/*.h      ./inc/libmatch
	-cd ./libraries/libstream    && $(MAKE) && cd ../.. && cp ./libraries/libstream/lib/*     ./lib && mkdir inc/libstream    && cp ./libraries/libstream/src/*.h     ./inc/libstream
	-cd ./libraries/libast       && $(MAKE) && cd ../.. && cp ./libraries/libast/lib/*        ./lib && mkdir inc/libast       && cp ./libraries/libast/src/*.h        ./inc/libast
	-cd ./libraries/libecho      && $(MAKE) && cd ../.. && cp ./libraries/libecho/lib/*       ./lib && mkdir inc/libecho      && cp ./libraries/libecho/src/*.h       ./inc/libecho
	-cd ./libraries/libmodel     && $(MAKE) && cd ../.. && cp ./libraries/libmodel/lib/*      ./lib && mkdir inc/libmodel     && cp ./libraries/libmodel/src/*.h      ./inc/libmodel
	-cd ./libraries/libmodule    && $(MAKE) && cd ../.. && cp ./libraries/libmodule/lib/*     ./lib && mkdir inc/libmodule    && cp ./libraries/libmodule/src/*.h     ./inc/libmodule
	-cd ./libraries/libevent     && $(MAKE) && cd ../.. && cp ./libraries/libevent/lib/*      ./lib && mkdir inc/libevent     && cp ./libraries/libevent/src/*.h      ./inc/libevent
	-cd ./libraries/libioevent   && $(MAKE) && cd ../.. && cp ./libraries/libioevent/lib/*    ./lib && mkdir inc/libioevent   && cp ./libraries/libioevent/src/*.h    ./inc/libioevent
	-cd ./libraries/libfsevent   && $(MAKE) && cd ../.. && cp ./libraries/libfsevent/lib/*    ./lib && mkdir inc/libfsevent   && cp ./libraries/libfsevent/src/*.h    ./inc/libfsevent
	-cd ./libraries/libipc       && $(MAKE) && cd ../.. && cp ./libraries/libipc/lib/*        ./lib && mkdir inc/libipc       && cp ./libraries/libipc/src/*.h        ./inc/libipc
	-cd ./libraries/libvm        && $(MAKE) && cd ../.. && cp ./libraries/libvm/lib/*         ./lib && mkdir inc/libvm        && cp ./libraries/libvm/src/*.h         ./inc/libvm
	-cd ./libraries/libvh        && $(MAKE) && cd ../.. && cp ./libraries/libvh/lib/*         ./lib && mkdir inc/libvh        && cp ./libraries/libvh/src/*.h         ./inc/libvh
	-cd ./libraries/libes        && $(MAKE) && cd ../.. && cp ./libraries/libes/lib/*         ./lib && mkdir inc/libes        && cp ./libraries/libes/src/*.h         ./inc/libes
	-cd ./libraries/libarguments && $(MAKE) && cd ../.. && cp ./libraries/libarguments/lib/*  ./lib && mkdir inc/libarguments && cp ./libraries/libarguments/src/*.h  ./inc/libarguments
	-cd ./libraries/libmit       && $(MAKE) && cd ../.. && cp ./libraries/libmit/lib/*        ./lib && mkdir inc/libmit       && cp ./libraries/libmit/src/*.h        ./inc/libmit
	-mkdir ./inc/modules
	-mkdir ./lib/modules
	-cd ./modules/io_event_tls_engine && $(MAKE) && cd ../../ && cp ./modules/io_event_tls_engine/lib/*  ./lib/modules && mkdir inc/modules/io_event_tls_engine && cp ./modules/io_event_tls_engine/src/*.h  ./inc/modules/io_event_tls_engine

subinstall:
	-mkdir libraries
	-cd libraries && git clone https://github.com/FoxInTango/libcpp.git
	-cd libraries && git clone https://github.com/FoxInTango/libsystem.git
	-cd libraries && git clone https://github.com/FoxInTango/libmm.git
	-cd libraries && git clone https://github.com/FoxInTango/libstring.git
	-cd libraries && git clone https://github.com/FoxInTango/liburl.git
	-cd libraries && git clone https://github.com/FoxInTango/libmatch.git
	-cd libraries && git clone https://github.com/FoxInTango/libstream.git
	-cd libraries && git clone https://github.com/FoxInTango/libast.git
	-cd libraries && git clone https://github.com/FoxInTango/libecho.git
	-cd libraries && git clone https://github.com/FoxInTango/libmodel.git
	-cd libraries && git clone https://github.com/FoxInTango/libmodule.git
	-cd libraries && git clone https://github.com/FoxInTango/libevent.git
	-cd libraries && git clone https://github.com/FoxInTango/libioevent.git
	-cd libraries && git clone https://github.com/FoxInTango/libfsevent.git
	-cd libraries && git clone https://github.com/FoxInTango/libipc.git
	-cd libraries && git clone https://github.com/FoxInTango/libvm.git
	-cd libraries && git clone https://github.com/FoxInTango/libvh.git
	-cd libraries && git clone https://github.com/FoxInTango/libes.git
	-cd libraries && git clone https://github.com/FoxInTango/libarguments.git
	-cd libraries && git clone https://github.com/FoxInTango/libmit.git
	-mkdir modules
	-cd modules && git clone https://github.com/FoxInTango/io_event_tls_engine.git

update:
	-git pull
	-cd ./libraries/libcpp        &&  git pull && cd ../
	-cd ./libraries/libsystem     &&  git pull && cd ../
	-cd ./libraries/libmm         &&  git pull && cd ../
	-cd ./libraries/libstring     &&  git pull && cd ../
	-cd ./libraries/liburl        &&  git pull && cd ../
	-cd ./libraries/libmatch      &&  git pull && cd ../
	-cd ./libraries/libstream     &&  git pull && cd ../
	-cd ./libraries/libast        &&  git pull && cd ../
	-cd ./libraries/libecho       &&  git pull && cd ../
	-cd ./libraries/libmodel      &&  git pull && cd ../
	-cd ./libraries/libmodule     &&  git pull && cd ../
	-cd ./libraries/libevent      &&  git pull && cd ../
	-cd ./libraries/libioevent    &&  git pull && cd ../
	-cd ./libraries/libfsevent    &&  git pull && cd ../
	-cd ./libraries/libipc        &&  git pull && cd ../
	-cd ./libraries/libvm         &&  git pull && cd ../
	-cd ./libraries/libvh         &&  git pull && cd ../
	-cd ./libraries/libes         &&  git pull && cd ../
	-cd ./libraries/libarguments  &&  git pull && cd ../
	-cd ./libraries/libmit        &&  git pull && cd ../
	-cd ./modules/io_event_tls_engine && git pull && cd ../../

subclean:
	-cd ./libraries/libcpp       &&  $(MAKE) clean
	-cd ./libraries/libsystem    &&  $(MAKE) clean
	-cd ./libraries/libmm        &&  $(MAKE) clean
	-cd ./libraries/libstring    &&  $(MAKE) clean
	-cd ./libraries/liburl       &&  $(MAKE) clean
	-cd ./libraries/libmatch     &&  $(MAKE) clean
	-cd ./libraries/libstream    &&  $(MAKE) clean
	-cd ./libraries/libast       &&  $(MAKE) clean
	-cd ./libraries/libecho      &&  $(MAKE) clean
	-cd ./libraries/libmodel     &&  $(MAKE) clean
	-cd ./libraries/libmodule    &&  $(MAKE) clean
	-cd ./libraries/libevent     &&  $(MAKE) clean
	-cd ./libraries/libioevent   &&  $(MAKE) clean
	-cd ./libraries/libfsevent   &&  $(MAKE) clean
	-cd ./libraries/libipc       &&  $(MAKE) clean
	-cd ./libraries/libvm        &&  $(MAKE) clean
	-cd ./libraries/libvh        &&  $(MAKE) clean
	-cd ./libraries/libes        &&  $(MAKE) clean
	-cd ./libraries/libarguments &&  $(MAKE) clean
	-cd ./libraries/libmit       &&  $(MAKE) clean
	-cd ./modules/io_event_tls_engine && $(MAKE) clean

devinstall:
	-cd libraries && git clone git@github.com:FoxInTango/libcpp.git
	-cd libraries && git clone git@github.com:FoxInTango/libsystem.git
	-cd libraries && git clone git@github.com:FoxInTango/libmm.git
	-cd libraries && git clone git@github.com:FoxInTango/libstring.git
	-cd libraries && git clone git@github.com:FoxInTango/liburl.git
	-cd libraries && git clone git@github.com:FoxInTango/libmatch.git
	-cd libraries && git clone git@github.com:FoxInTango/libstream.git
	-cd libraries && git clone git@github.com:FoxInTango/libast.git
	-cd libraries && git clone git@github.com:FoxInTango/libecho.git
	-cd libraries && git clone git@github.com:FoxInTango/libmodel.git
	-cd libraries && git clone git@github.com:FoxInTango/libmodule.git
	-cd libraries && git clone git@github.com:FoxInTango/libevent.git
	-cd libraries && git clone git@github.com:FoxInTango/libioevent.git
	-cd libraries && git clone git@github.com:FoxInTango/libfsevent.git
	-cd libraries && git clone git@github.com:FoxInTango/libipc.git
	-cd libraries && git clone git@github.com:FoxInTango/libvm.git
	-cd libraries && git clone git@github.com:FoxInTango/libvh.git
	-cd libraries && git clone git@github.com:FoxInTango/libes.git
	-cd libraries && git clone git@github.com:FoxInTango/libarguments.git
	-cd libraries && git clone git@github.com:FoxInTango/libmit.git
	-mkdir modules && cd modules && git clone git@github.com:FoxInTango/io_event_tls_engine.git

publish:
	-git add Makefile
	-git add README.md
	-git add REF.md
	-git add LICENSE
	-git add .gitignore
	-git add .gitmodules
	-git add src/*.h
	-git add src/*.cpp
	-git add etc/alpine
	-git add readme/*
	-git commit -m "alpine" && git push
	-cd ./libraries/libcpp        &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libsystem     &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libmm         &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libstring     &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/liburl        &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libmatch      &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libstream     &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libast        &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libecho       &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libmodel      &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libmodule     &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libevent      &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libioevent    &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libfsevent    &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libipc        &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libvm         &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libvh         &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libes         &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libarguments  &&  git add . && git commit -m "alpine" && git push
	-cd ./libraries/libmit        &&  git add . && git commit -m "alpine" && git push
	-cd ./modules/io_event_tls_engine && git add .&& git commit -m "alpine" && git push

clean   :
	rm -f $(TARGET_OBJECTS_AS)
	rm -f $(TARGET_OBJECTS_CC)
	rm -f $(TARGET_OBJECTS_PP)
	rm -f ${TARGET_BIN_DIR}/*
install :
	cp -f $(TARGET_BIN_DIR)/$(TARGET_NAME) $(INSTALL_PATH_PREFIX)/bin/
	cp -f $(TARGET_LIB_DIR)/* $(INSTALL_PATH_PREFIX)/lib/
uninstall : 
	rm -rf $(INSTALL_PATH_PREFIX)/bin/$(TARGET_NAME)

# https://www.ruanyifeng.com/blog/2015/02/make.html
# https://blog.csdn.net/freestep96/article/details/126352344
# Makefile Path :https://blog.csdn.net/evolay/article/details/121625712
# 静态库顺序
