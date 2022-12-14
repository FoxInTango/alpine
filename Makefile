CC=g++
AS=as
AR=ar
LD=ld

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
INSTALL_PATH_PREFIX = /usr/local

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

# 需要链接的库
TARGET_LIBS = -lc -lstdc++ -lcpp -lstring -lurl -lstream -last -lecho -lmodel -lmodule -levent -lioevent -lfsevent -lvm -les -larguments 

ASFLAGS =
CCFLAGS = -c -fPIC -Wall -fvisibility=hidden -std=c++11 -I ./inc
PPFLAGS = -c -fPIC -Wall -fvisibility=hidden -std=c++11 -I ./inc

OPENSSL=
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

export SUPER_LIBRARY_PATH = ../lib
export SUPER_INCLUDE_PATH = ../inc

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

subinstall:
	
submodule:
	rm -rf ./inc/*
	rm -rf ./lib/*
	-cd ./libcpp       && $(MAKE) && cd ../ && cp ./libcpp/lib/*        ./lib && mkdir inc/libcpp       && cp ./libcpp/src/*.h        ./inc/libcpp
	-cd ./libstring    && $(MAKE) && cd ../ && cp ./libstring/lib/*     ./lib && mkdir inc/libstring    && cp ./libstring/src/*.h     ./inc/libstring
	-cd ./liburl       && $(MAKE) && cd ../ && cp ./liburl/lib/*        ./lib && mkdir inc/liburl       && cp ./liburl/src/*.h        ./inc/liburl
	-cd ./libstream    && $(MAKE) && cd ../ && cp ./libstream/lib/*     ./lib && mkdir inc/libstream    && cp ./libstream/src/*.h     ./inc/libstream
	-cd ./libast       && $(MAKE) && cd ../ && cp ./libast/lib/*        ./lib && mkdir inc/libast       && cp ./libast/src/*.h        ./inc/libast
	-cd ./libecho      && $(MAKE) && cd ../ && cp ./libecho/lib/*       ./lib && mkdir inc/libecho      && cp ./libecho/src/*.h       ./inc/libecho
	-cd ./libmodel     && $(MAKE) && cd ../ && cp ./libmodel/lib/*      ./lib && mkdir inc/libmodel     && cp ./libmodel/src/*.h      ./inc/libmodel
	-cd ./libmodule    && $(MAKE) && cd ../ && cp ./libmodule/lib/*     ./lib && mkdir inc/libmodule    && cp ./libmodule/src/*.h     ./inc/libmodule
	-cd ./libevent     && $(MAKE) && cd ../ && cp ./libevent/lib/*      ./lib && mkdir inc/libevent     && cp ./libevent/src/*.h      ./inc/libevent
	-cd ./libioevent   && $(MAKE) && cd ../ && cp ./libioevent/lib/*    ./lib && mkdir inc/libioevent   && cp ./libioevent/src/*.h    ./inc/libioevent
	-cd ./libfsevent   && $(MAKE) && cd ../ && cp ./libfsevent/lib/*    ./lib && mkdir inc/libfsevent   && cp ./libfsevent/src/*.h    ./inc/libfsevent
	-cd ./libvm        && $(MAKE) && cd ../ && cp ./libvm/lib/*         ./lib && mkdir inc/libvm        && cp ./libvm/src/*.h         ./inc/libvm
	-cd ./libes        && $(MAKE) && cd ../ && cp ./libes/lib/*         ./lib && mkdir inc/libes        && cp ./libes/src/*.h         ./inc/libes
	-cd ./libarguments && $(MAKE) && cd ../ && cp ./libarguments/lib/*  ./lib && mkdir inc/libarguments && cp ./libarguments/src/*.h  ./inc/libarguments

subupdate:
	cd ./libcpp        &&  git pull && cd ../
	cd ./libstring     &&  git pull && cd ../
	cd ./liburl        &&  git pull && cd ../
	cd ./libstream     &&  git pull && cd ../
	cd ./libast        &&  git pull && cd ../
	cd ./libecho       &&  git pull && cd ../
	cd ./libmodel      &&  git pull && cd ../
	cd ./libmodule     &&  git pull && cd ../
	cd ./libevent      &&  git pull && cd ../
	cd ./libioevent    &&  git pull && cd ../
	cd ./libfsevent    &&  git pull && cd ../
	cd ./libvm         &&  git pull && cd ../
	cd ./libes         &&  git pull && cd ../
	cd ./libarguments  &&  git pull && cd ../

subpublish:
	-cd ./libcpp        &&  git add . && git commit -m "alpine" && git push
	-cd ./libstring     &&  git add . && git commit -m "alpine" && git push
	-cd ./liburl        &&  git add . && git commit -m "alpine" && git push
	-cd ./libstream     &&  git add . && git commit -m "alpine" && git push
	-cd ./libast        &&  git add . && git commit -m "alpine" && git push
	-cd ./libecho       &&  git add . && git commit -m "alpine" && git push
	-cd ./libmodel      &&  git add . && git commit -m "alpine" && git push
	-cd ./libmodule     &&  git add . && git commit -m "alpine" && git push
	-cd ./libevent      &&  git add . && git commit -m "alpine" && git push
	-cd ./libioevent    &&  git add . && git commit -m "alpine" && git push
	-cd ./libfsevent    &&  git add . && git commit -m "alpine" && git push
	-cd ./libvm         &&  git add . && git commit -m "alpine" && git push
	-cd ./libes         &&  git add . && git commit -m "alpine" && git push
	-cd ./libarguments  &&  git add . && git commit -m "alpine" && git push

subclean:
	-cd ./libcpp       &&  $(MAKE) clean
	-cd ./libstring    &&  $(MAKE) clean
	-cd ./liburl       &&  $(MAKE) clean
	-cd ./libstream    &&  $(MAKE) clean
	-cd ./libast       &&  $(MAKE) clean
	-cd ./libecho      &&  $(MAKE) clean
	-cd ./libmodel     &&  $(MAKE) clean
	-cd ./libmodule    &&  $(MAKE) clean
	-cd ./libevent     &&  $(MAKE) clean
	-cd ./libioevent   &&  $(MAKE) clean
	-cd ./libfsevent   &&  $(MAKE) clean
	-cd ./libvm        &&  $(MAKE) clean
	-cd ./libes        &&  $(MAKE) clean
	-cd ./libarguments &&  $(MAKE) clean

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
