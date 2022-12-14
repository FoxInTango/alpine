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

TARGET_BIN_DIR := ./bin
TARGET_LIB_DIR := ./lib

PROJECT_ROOT = .
PROJECT_DIR_BESIDES  = \(
PROJECT_DIR_BESIDES += -path ./.git
PROJECT_DIR_BESIDES += -o -path ./libarguments
PROJECT_DIR_BESIDES += -o -path ./libcpp
PROJECT_DIR_BESIDES += -o -path ./libecho
PROJECT_DIR_BESIDES += -o -path ./libmodel
PROJECT_DIR_BESIDES += -o -path ./libmodule
PROJECT_DIR_BESIDES += -o -path ./libevent
PROJECT_DIR_BESIDES += -o -path ./libfsevent
PROJECT_DIR_BESIDES += -o -path ./libioevent
PROJECT_DIR_BESIDES += -o -path ./libes
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
TARGET_LIB_INCLUDE =
TARGET_LIB_BINARY  = 
TARGET_LD_FLAGS    = 
# 需要链接的库
TARGET_LIBS = -lstdc++ -larguments -lmodel -les -static
# 链接标志
TARGET_LIB_PIC_SHARED  = -fPIC
TARGET_LIB_PIC_STATIC  = 
TARGET_LIB_PIC_BINARY  = -fPIE
TARGET_LIB_FLAG_SHARED = -shared
TARGET_LIB_FLAG_STATIC =
# 自动判别
TARGET_LIB_PIC  = 
TARGET_LIB_FLAG = 

ASFLAGS =
CCFLAGS = -c -Wall -fvisibility=hidden
PPFLAGS = -c -Wall -fvisibility=hidden
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
    TARGET_LIB_EXT_DYNAMIC := so
endif

# 平台检测 -- FreeBSD
ifeq (${PLATFORM_ARCH},${PLATFORM_ARCH_FreeBSD})
    TARGET_BIN_EXT         := 
    TARGET_LIB_EXT_STATIC  := a
    TARGET_LIB_EXT_DYNAMIC := so
endif

TARGETS = 

export SUB_PROJECT_INSTALL_PREFIX = ./

# 依赖库
SUBMODULES += LIB_CPP
SUBMODULES += LIB_MODEL
SUBMODULES += LIB_MODULE
SUBMODULES += LIB_ES

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

${TARGET_LIB_DIR}/${TARGET_NAME}.${TARGET_LIB_EXT_STATIC}: $(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(AR) ${TARGET_LD_FLAGS} ${TARGET_LIB_PIC} ${TARGET_LIB_FLAG} $(TARGET_LIB_PIC_STATIC) $(TARGET_LIB_FLAG_STATIC) $(TARGET_LIBS) -r $@ $^

${TARGET_LIB_DIR}/${TARGET_NAME}.${TARGET_LIB_EXT_DYNAMIC}: $(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(CC) ${TARGET_LD_FLAGS} ${TARGET_LIB_PIC} ${TARGET_LIB_FLAG}  $(TARGET_LIB_PIC_SHARED) $(TARGET_LIB_FLAG_SHARED) $(TARGET_LIBS) -o $@ $^

${TARGET_BIN_DIR}/${TARGET_NAME}: $(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(CC) ${TARGET_LD_FLAGS} ${TARGET_LIB_PIC} ${TARGET_LIB_FLAG} -o $@ $^ $(TARGET_LIBS)

$(TARGET_OBJECTS_AS):%.o:%.s
	$(AS) ${ASFLAGS} $< -o $@
$(TARGET_OBJECTS_CC):%.o:%.c
	$(CC) ${CCFLAGS} $(TARGET_LIB_PIC_SHARED) $< -o $@
$(TARGET_OBJECTS_PP):%.o:%.cpp
	$(CC) ${PPFLAGS} $(TARGET_LIB_PIC_SHARED) $< -o $@

submodule:${LIB_CPP} ${LIB_MODEL} ${LIB_MODULE} ${LIB_ES}
	cd ./libcpp    && $(MAKE)
	cd ./libmodel  && $(MAKE)
	cd ./libmodule && $(MAKE)
	cd ./libes     && $(MAKE)

subinstall:
	cd ./libcpp    &&  $(MAKE) install
	cd ./libmodel  &&  $(MAKE) install
	cd ./libmodule &&  $(MAKE) install
	cd ./libes     &&  $(MAKE) install

subupdate:
	cd ./libcpp    &&  git pull
	cd ./libmodel  &&  git pull
	cd ./libmodule &&  git pull
	cd ./libes     &&  git pull

subpublish:
	-cd ./libcpp    &&  git add . && git commit -m "alpine" && git push
	-cd ./libmodel  &&  git add . && git commit -m "alpine" && git push
	-cd ./libmodule &&  git add . && git commit -m "alpine" && git push
	-cd ./libes     &&  git add . && git commit -m "alpine" && git push

LIB_CPP:
	cd ./libcpp && $(MAKE) #&& $(MAKE) install
LIB_MODEL:
	cd ./libmodel && $(MAKE) #&& $(MAKE) install
LIB_MODULE:
	cd ./libmodule && $(MAKE) #&& $(MAKE) install
LIB_ES:
	cd ./libes && $(MAKE) #&& $(MAKE) install

clean   :
	rm -f $(TARGET_OBJECTS_AS)
	rm -f $(TARGET_OBJECTS_CC)
	rm -f $(TARGET_OBJECTS_PP)
	rm -f ${TARGET_LIB_DIR}/*
	rm -f ${TARGET_BIN_DIR}/*
install :
	cp -f $(TARGET_BIN_DIR)/$(TARGET_NAME) $(INSTALL_PATH_PREFIX)/bin/
uninstall : 
	rm -rf $(TARGET_BIN_DIR)/$(TARGET_NAME) $(INSTALL_PATH_PREFIX)/bin/$(TARGET_NAME)

# https://www.ruanyifeng.com/blog/2015/02/make.html
# https://blog.csdn.net/freestep96/article/details/126352344
