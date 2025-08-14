MAKE_CONFIG_DIR          = .make
PROJECT_MODULE_MAKEFILES += $(wildcard $(MAKE_CONFIG_DIR)/*.mk)
include $(PROJECT_MODULE_MAKEFILES)

CC=gcc
PP=g++
AS=as
AR=ar
LD=ld
OD=objdump
RE=readelf

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
INSTALL_PATH_PREFIX = /Applications/alpine
TARGET_VERSION = 1.0.0
INSTALL_PATH_PREFIX = /usr/local

TARGET_INC_DIR := ./inc
TARGET_BIN_DIR := ./bin
TARGET_LIB_DIR := ./lib

PROJECT_ROOT = .
PROJECT_DIR_BESIDES  = \(
PROJECT_DIR_BESIDES += -path ./.git
PROJECT_DIR_BESIDES += -o -path ./build
PROJECT_DIR_BESIDES += -o -path ./applications
PROJECT_DIR_BESIDES += -o -path ./libraries
PROJECT_DIR_BESIDES += -o -path ./modules
PROJECT_DIR_BESIDES += -o -path ./templates
PROJECT_DIR_BESIDES += -o -path ./obj
PROJECT_DIR_BESIDES += -o -path ./bin
PROJECT_DIR_BESIDES += -o -path ./lib
PROJECT_DIR_BESIDES += -o -path ./inc
PROJECT_DIR_BESIDES += -o -path ./man
PROJECT_DIR_BESIDES += -o -path ./docs
PROJECT_DIR_BESIDES += -o -path ./ide
PROJECT_DIR_BESIDES += -o -path ./thirds
PROJECT_DIR_BESIDES += -o -path ./.trash
PROJECT_DIR_BESIDES += \)
#PROJECT_DIRS   = $(shell $(FD) $(PROJECT_ROOT) $(PROJECT_DIR_BESIDES) -prune -o -type d -print) #maxdepth
ifeq ($(OS),Windows_NT)
    PROJECT_DIRS   = $(shell busybox find $(PROJECT_ROOT) $(PROJECT_DIR_BESIDES) -prune -o -type d -print) #maxdepth
else
	PROJECT_DIRS   = $(shell find $(PROJECT_ROOT) $(PROJECT_DIR_BESIDES) -prune -o -type d -print) #maxdepth
endif

TARGET_HEADERS = $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.h))
TARGET_SOURCES_AS  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.s))
TARGET_OBJECTS_AS  += $(patsubst %.s,%.o,$(TARGET_SOURCES_AS))
TARGET_SOURCES_CC  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.c))
TARGET_OBJECTS_CC  += $(patsubst %.c,%.o,$(TARGET_SOURCES_CC))                        # $(patsubst %.cpp,${TARGET_OBJECTS_DIR}/%.o,$(notdir ${TARGET_SOURCES}))
TARGET_SOURCES_PP  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.cpp))
TARGET_OBJECTS_PP  += $(patsubst %.cpp,%.o,$(TARGET_SOURCES_PP))

TARGET_HEADER_DIRS += $(foreach dir,$(PROJECT_DIRS),-I$(dir))                         # $(wildcard $(TARGET_HEADERS_DIR)/*.h)

# 链接库配置
TARGET_LD_FLAGS    = -L ./lib #-Wl,-rpath=${INSTALL_PATH_PREFIX}/versions/${TARGET_VERSION}/lib

# 需要链接的库  -lstring -lurl
TARGET_LIBS = -lvk -lwayland-client -lktx -lvulkan -lelf -larguments -lsystem -lioevent -lfsevent -levent -lmit -lecho -les -last -lvm -lmodule -lmodel -lstream -lurl -lstring -lcpp -lstdc++ -lm -lc  #-ldl     

# for libvk
TARGET_LIBS += -linput -ldrm -lseat -lgbm -lshaderc -lxcb
TARGET_LIBS += -lxcb-ewmh -ludev
ASFLAGS =
CCFLAGS = -c -fPIC -Wall -fvisibility=hidden -I ./inc
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

DEFAULT_INSTALL_PATH_PREFIX = /usr/local

MAKE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKE_FILE_DIR  := $(dir $(MAKE_FILE_PATH))

HEADER_INSTALL_PATH  = ${MAKE_FILE_DIR}inc
BINARY_INSTALL_PATH  = ${MAKE_FILE_DIR}bin
LIBRARY_INSTALL_PATH = ${MAKE_FILE_DIR}lib
DEPENDS_LIBRARY_PATH = ${MAKE_FILE_DIR}libraries
DEPENDS_THIRDS_PATH  = ${MAKE_FILE_DIR}thirds

ifdef SUPER_HEADER_INSTALL_PATH
HEADER_INSTALL_PATH = ${SUPER_HEADER_INSTALL_PATH}
endif


ifdef SUPER_BINARY_INSTALL_PATH
    BINARY_INSTALL_PATH  = ${SUPER_BINARY_INSTALL_PATH}
endif


ifdef SUPER_LIBRARY_INSTALL_PATH
    LIBRARY_INSTALL_PATH  = ${SUPER_LIBRARY_INSTALL_PATH}
endif


ifdef SUPER_DEPENDS_LIBRARY_PATH
    DEPENDS_LIBRARY_PATH  = ${SUPER_DEPENDS_LIBRARY_PATH}
endif


ifdef SUPER_DEPENDS_THIRDS_PATH
    DEPENDS_THIRDS_PATH  = ${SUPER_DEPENDS_THIRDS_PATH}
endif

ifndef SUPER_HEADER_INSTALL_PATH
export SUPER_HEADER_INSTALL_PATH  = ${HEADER_INSTALL_PATH}
endif
ifndef SUPER_BINARY_INSTALL_PATH
export SUPER_BINARY_INSTALL_PATH  = ${BINARY_INSTALL_PATH}
endif
ifndef SUPER_LIBRARY_INSTALL_PATH
export SUPER_LIBRARY_INSTALL_PATH = ${LIBRARY_INSTALL_PATH}
endif
ifndef SUPER_DEPENDS_LIBRARY_PATH
export SUPER_DEPENDS_LIBRARY_PATH = ${DEPENDS_LIBRARY_PATH}
endif
ifndef SUPER_DEPENDS_THIRDS_PATH
export SUPER_DEPENDS_THIRDS_PATH  = ${DEPENDS_THIRDS_PATH}
endif

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
	$(PP) -o $@ $^  $(TARGET_LIBS) ${TARGET_LD_FLAGS} -fPIE #-static

$(TARGET_OBJECTS_AS):%.o:%.s
	$(AS) ${ASFLAGS} $< -o $@
$(TARGET_OBJECTS_CC):%.o:%.c
	$(CC) ${CCFLAGS} $< -o $@
$(TARGET_OBJECTS_PP):%.o:%.cpp
	$(PP) ${PPFLAGS} $< -o $@

clean   :
	rm -f $(TARGET_OBJECTS_AS)
	rm -f $(TARGET_OBJECTS_CC)
	rm -f $(TARGET_OBJECTS_PP)
	rm -f ${TARGET_BIN_DIR}/*
	rm -f $(TARGET_LIB_DIR)/*.a ; rm -f $(TARGET_LIB_DIR)/*.so ; rm -f $(TARGET_LIB_DIR)/modules/*.so ; rm -f $(TARGET_LIB_DIR)/modules/*.ko 
	rm -rf ${TARGET_INC_DIR}/*
prepare:
	-git clone wf@allinone.io:alpine/mit.git $(DEPENDS_LIBRARY_PATH)/$(basename $(notdir wf@allinone.io:alpine/mit.git))
	cd $(DEPENDS_LIBRARY_PATH)/$(basename $(notdir wf@allinone.io:alpine/mit.git)) && $(MAKE) prepare
	-git clone wf@allinone.io:alpine/tango.git $(DEPENDS_LIBRARY_PATH)/$(basename $(notdir wf@allinone.io:alpine/tango.git))
	cd $(DEPENDS_LIBRARY_PATH)/$(basename $(notdir wf@allinone.io:alpine/tango.git)) && $(MAKE) prepare

INSTALL_PATH=${INSTALL_PATH_PREFIX}/versions/${TARGET_VERSION}
install :
	-mkdir -p $(INSTALL_PATH)
	-mkdir ${INSTALL_PATH}/inc
	-mkdir $(INSTALL_PATH)/bin
	-mkdir $(INSTALL_PATH)/lib
	cp -rf $(TARGET_INC_DIR)/* $(INSTALL_PATH)/inc/
	cp -rf $(TARGET_BIN_DIR)/* $(INSTALL_PATH)/bin/
	cp -rf $(TARGET_LIB_DIR)/* $(INSTALL_PATH)/lib/
	ln -s  $(INSTALL_PATH)/bin/${TARGET_NAME} /usr/local/bin/${TARGET_NAME} 
uninstall : 
	rm -rf $(INSTALL_PATH)
	rm -f /usr/local/bin/${TARGET_NAME}
current:
	@echo current version ${TARGET_VERSION}
hook_install:
	insmod lib/modules/alpine_syscall_hooks.ko
	insmod lib/modules/alpine_network_hooks.ko
	insmod lib/modules/alpine_vfs.ko
	insmod lib/modules/alpine_vnw.ko
hook_uninstall:
	rmmod alpine_syscall_hooks
	rmmod alpine_network_hooks
	rmmod alpine_vfs
	rmmod alpine_vnw
hook_echo:
	@echo -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
	@dmesg | tail -n20
echo:
	@echo PROJECT_MODULE_MAKEFILES:$(PROJECT_MODULE_MAKEFILES)
	@echo INSTALL_PATH:$(INSTALL_PATH)
# https://www.ruanyifeng.com/blog/2015/02/make.html
# https://blog.csdn.net/freestep96/article/details/126352344
# Makefile Path :https://blog.csdn.net/evolay/article/details/121625712
# 静态库顺序
# rpath : readelf -d  
