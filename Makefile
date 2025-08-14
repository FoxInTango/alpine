MAKE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKE_FILE_DIR  := $(dir $(MAKE_FILE_PATH))
MAKE_CONFIG_DIR           = $(MAKE_FILE_DIR).make
PROJECT_MODULE_MAKEFILES += $(wildcard $(MAKE_CONFIG_DIR)/*.mk)
include $(PROJECT_MODULE_MAKEFILES)
include $(MAKE_CONFIG_DIR)/name
include $(MAKE_CONFIG_DIR)/super 

CC=g++
PP=gcc
AS=as
AR=ar
LD=ld

PLATFORM_ARCH         = $(shell uname -s)
PLATFORM_ARCH_LINUX   = Linux
PLATFORM_ARCH_DARWIN  = Darwin
PLATFORM_ARCH_FREEBSD = FreeBSD

MK_FALSE = 0
MK_TRUE  = 1
# Output Types
include $(MAKE_CONFIG_DIR)/output

# ** Project Settings **
#
#    Output Name
#    TARGET_NAME     =  : Defined in .make/name and also can be redefine here.
#    Output Name Extensions
TARGET_BIN_EXT = 
TARGET_LIB_EXT_STATIC  =
TARGET_LIB_EXT_DYNAMIC = 
# Flags
#ASFLAGS =
CCFLAGS += -c -fPIC -Wall -std=c11
PPFLAGS += -c -fPIC -Wall -std=c++11 -fvisibility=hidden
#LDFLAGS =

# Path Configurations
DEFAULT_INSTALL_PATH_PREFIX = /usr/local

HEADER_INSTALL_PATH  = ${MAKE_FILE_DIR}inc
BINARY_INSTALL_PATH  = ${MAKE_FILE_DIR}bin
LIBRARY_INSTALL_PATH = ${MAKE_FILE_DIR}lib
DEPENDS_LIBRARY_PATH = ${MAKE_FILE_DIR}libraries
DEPENDS_THIRDS_PATH  = ${MAKE_FILE_DIR}thirds

# Path where headers to be installed.
ifdef SUPER_HEADER_INSTALL_PATH
HEADER_INSTALL_PATH = ${SUPER_HEADER_INSTALL_PATH}
endif

# Path where outputed binary to be installed.
ifdef SUPER_BINARY_INSTALL_PATH
    BINARY_INSTALL_PATH  = ${SUPER_BINARY_INSTALL_PATH}
endif

# Path where outputed library to be installed.
ifdef SUPER_LIBRARY_INSTALL_PATH
    LIBRARY_INSTALL_PATH  = ${SUPER_LIBRARY_INSTALL_PATH}
endif

# Path where libraries depended by this project to be downloaded.
ifdef SUPER_DEPENDS_LIBRARY_PATH
    DEPENDS_LIBRARY_PATH  = ${SUPER_DEPENDS_LIBRARY_PATH}
endif

# Path where third-parties depended by this project to be downloaded.
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

include $(MAKE_CONFIG_DIR)/prepare

ifdef SUPER_INCLUDE_PATH
    CCFLAGS += -I${SUPER_INCLUDE_PATH}
	PPFLAGS += -I${SUPER_INCLUDE_PATH}
endif
ifdef SUPER_LIBRARY_PATH
    LDFLAGS += -L${SUPER_LIBRARY_PATH}
endif
ifdef SUPER_RUNTIME_PATH
    LDFLAGS += -Wl,-rpath=${SUPER_RUNTIME_PATH}
endif

TARGET_BIN_DIR := ./bin
TARGET_LIB_DIR := ./lib

PROJECT_ROOT = .
PROJECT_DIR_BESIDES  = \(
PROJECT_DIR_BESIDES +=    -path ./.git
PROJECT_DIR_BESIDES += -o -path ./.make
PROJECT_DIR_BESIDES += -o -path ./build
PROJECT_DIR_BESIDES += -o -path ./applications
PROJECT_DIR_BESIDES += -o -path ./libraries
PROJECT_DIR_BESIDES += -o -path ./modules
PROJECT_DIR_BESIDES += -o -path ./templates
PROJECT_DIR_BESIDES += -o -path ./assets
PROJECT_DIR_BESIDES += -o -path ./readme
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
PROJECT_DIRS   = $(shell find $(PROJECT_ROOT) $(PROJECT_DIR_BESIDES) -prune -o -type d -print)

TARGET_HEADERS = $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.h))

TARGET_SOURCES_AS  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.s))
TARGET_OBJECTS_AS  += $(patsubst %.s,%.o,$(TARGET_SOURCES_AS))
TARGET_SOURCES_CC  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.c))
TARGET_OBJECTS_CC  += $(patsubst %.c,%.o,$(TARGET_SOURCES_CC))
TARGET_SOURCES_PP  += $(foreach dir,$(PROJECT_DIRS),$(wildcard $(dir)/*.cpp))
TARGET_OBJECTS_PP  += $(patsubst %.cpp,%.o,$(TARGET_SOURCES_PP))

TARGET_HEADER_DIRS += $(foreach dir,$(PROJECT_DIRS),-I$(dir))

# 需要链接的库
TARGET_LIBS = -lmodel -lstdc++
# 链接标志

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

${TARGET_LIB_DIR}/${TARGET_NAME}.${TARGET_LIB_EXT_STATIC}:$(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(AR) -crvs $@ $^

${TARGET_LIB_DIR}/${TARGET_NAME}.${TARGET_LIB_EXT_DYNAMIC}:$(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(CC) -fPIC -shared  -o $@ $^ ${LDFLAGS} $(TARGET_LIBS)

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
	rm -f ${TARGET_LIB_DIR}/*
	rm -f ${TARGET_BIN_DIR}/*
prepare : $(PREPARE_TARGETS)
	@echo "prepared"
	-cd libraries/libarguments && make prepare
install :
	rm -rf $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	rm -rf $(BINARY_INSTALL_PATH)/$(TARGET_NAME)
	rm -rf $(LIBRARY_INSTALL_PATH)/$(TARGET_NAME).*
	mkdir  $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	cp     $(TARGET_HEADERS) $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	cp     $(TARGET_LIB_DIR)/$(TARGET_NAME).$(TARGET_LIB_EXT_STATIC)  $(LIBRARY_INSTALL_PATH)
	cp     $(TARGET_LIB_DIR)/$(TARGET_NAME).$(TARGET_LIB_EXT_DYNAMIC) $(LIBRARY_INSTALL_PATH)
uninstall : 
	rm -rf $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	rm -rf $(BINARY_INSTALL_PATH)/$(TARGET_NAME)
	rm -rf $(LIBRARY_INSTALL_PATH)/$(TARGET_NAME).*

publish:$(PUBLISH_TARGETS)
	-git add Makefile
	-git add .make
	-git add README.md
	-git add TODO.md
	-git add REF.md
	-git add LICENSE
	-git add .gitignore
	-git add .gitmodules
	-git add src/*.h
	-git add src/*.cpp
	-git add etc/alpine
	-git add readme/*
	-git add build
	-git add inc/.keepalive
	-git add lib/.keepalive
	-git add bin/.keepalive
	git commit -m "$(shell date)" && git push
update:$(UPDATE_TARGETS)
	git pull
echo:
	@echo $@
	@echo TARGET_NAME:$(TARGET_NAME)
	@echo HEADER_INSTALL_PATH:$(HEADER_INSTALL_PATH)
	@echo BINARY_INSTALL_PATH:$(BINARY_INSTALL_PATH)
	@echo LIBRARY_INSTALL_PATH:$(LIBRARY_INSTALL_PATH)
	@echo DEPENDS_LIBRARY_PATH:$(DEPENDS_LIBRARY_PATH)
	@echo DEPENDS_THIRDS_PATH:$(DEPENDS_THIRDS_PATH)
