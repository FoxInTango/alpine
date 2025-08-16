.DEFAULT_GOAL := ALL
MAKE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKE_FILE_DIR  := $(dir $(MAKE_FILE_PATH))
MAKE_CONFIG_DIR           = $(MAKE_FILE_DIR).make
PROJECT_MODULE_MAKEFILES += $(wildcard $(MAKE_CONFIG_DIR)/*.mk)
include $(PROJECT_MODULE_MAKEFILES)
include $(MAKE_CONFIG_DIR)/config
include $(MAKE_CONFIG_DIR)/super
include $(MAKE_CONFIG_DIR)/target

PLATFORM_ARCH         = $(shell uname -s)
PLATFORM_ARCH_LINUX   = Linux
PLATFORM_ARCH_DARWIN  = Darwin
PLATFORM_ARCH_FREEBSD = FreeBSD

# ** Project Settings **
#
#    Output Name
#    TARGET_NAME     =  : Defined in .make/name and also can be redefine here.
#    Output Name Extensions
TARGET_BIN_EXT = 
TARGET_LIB_EXT_STATIC  =
TARGET_LIB_EXT_DYNAMIC = 
# Flags
ASFLAGS += ${TARGET_FLAGS_AS}
CCFLAGS += ${TARGET_FLAGS_CC} -c -fPIC -Wall -std=c11
PPFLAGS += ${TARGET_FLAGS_PP} -c -fPIC -Wall -std=c++11 -fvisibility=hidden
ARFLAGS += ${TARGET_FLAGS_AR}
LDFLAGS += ${TARGET_FLAGS_LD}

# Path Configurations
HEADER_INSTALL_PATH  = ${MAKE_FILE_DIR}inc
BINARY_INSTALL_PATH  = ${MAKE_FILE_DIR}bin
LIBRARY_INSTALL_PATH = ${MAKE_FILE_DIR}lib
DEPENDS_LIBRARY_PATH = ${MAKE_FILE_DIR}libraries
DEPENDS_THIRDS_PATH  = ${MAKE_FILE_DIR}thirds
# Path where headers to be installed.
ifdef ROOT_HEADER_INSTALL_PATH
    HEADER_INSTALL_PATH = ${ROOT_HEADER_INSTALL_PATH}
    CCFLAGS += -I${ROOT_HEADER_INSTALL_PATH}
    PPFLAGS += -I${ROOT_HEADER_INSTALL_PATH}
endif

# Path where outputed binary to be installed.
ifdef ROOT_BINARY_INSTALL_PATH
    BINARY_INSTALL_PATH  = ${ROOT_BINARY_INSTALL_PATH}
endif

# Path where outputed library to be installed.
ifdef ROOT_LIBRARY_INSTALL_PATH
    LIBRARY_INSTALL_PATH  = ${ROOT_LIBRARY_INSTALL_PATH}
	LDFLAGS += -L${ROOT_LIBRARY_INSTALL_PATH}
    LDFLAGS += -Wl,-rpath=${ROOT_LIBRARY_INSTALL_PATH}
endif

# Path where libraries depended by this project to be downloaded.
ifdef ROOT_DEPENDS_LIBRARY_PATH
    DEPENDS_LIBRARY_PATH  = ${ROOT_DEPENDS_LIBRARY_PATH}
endif

# Path where third-parties depended by this project to be downloaded.
ifdef ROOT_DEPENDS_THIRDS_PATH
    DEPENDS_THIRDS_PATH  = ${ROOT_DEPENDS_THIRDS_PATH}
endif

ifndef ROOT_HEADER_INSTALL_PATH
export ROOT_HEADER_INSTALL_PATH  = ${HEADER_INSTALL_PATH}
endif
ifndef ROOT_BINARY_INSTALL_PATH
export ROOT_BINARY_INSTALL_PATH  = ${BINARY_INSTALL_PATH}
endif
ifndef ROOT_LIBRARY_INSTALL_PATH
export ROOT_LIBRARY_INSTALL_PATH = ${LIBRARY_INSTALL_PATH}
endif
ifndef ROOT_DEPENDS_LIBRARY_PATH
export ROOT_DEPENDS_LIBRARY_PATH = ${DEPENDS_LIBRARY_PATH}
endif
ifndef ROOT_DEPENDS_THIRDS_PATH
export ROOT_DEPENDS_THIRDS_PATH  = ${DEPENDS_THIRDS_PATH}
endif

include $(MAKE_CONFIG_DIR)/prepare

ifdef ROOT_INCLUDE_PATH
    CCFLAGS += -I${ROOT_INCLUDE_PATH}
	PPFLAGS += -I${ROOT_INCLUDE_PATH}
endif
ifdef ROOT_LIBRARY_PATH
    LDFLAGS += -L${ROOT_LIBRARY_PATH}
endif
ifdef ROOT_RUNTIME_PATH
    LDFLAGS += -Wl,-rpath=${ROOT_RUNTIME_PATH}
endif

TARGET_BIN_DIR := ./bin
TARGET_LIB_DIR := ./lib

SOURCE_DIRS   = $(shell find $(SOURCE_ROOT_DIRS) $(SOURCE_DIR_BESIDES) -prune -o -type d -print)

TARGET_HEADERS = $(foreach dir,$(SOURCE_DIRS),$(wildcard $(dir)/*.h))

TARGET_SOURCES_AS  += $(foreach dir,$(SOURCE_DIRS),$(wildcard $(dir)/*.s))
TARGET_OBJECTS_AS  += $(patsubst %.s,%.o,$(TARGET_SOURCES_AS))
TARGET_SOURCES_CC  += $(foreach dir,$(SOURCE_DIRS),$(wildcard $(dir)/*.c))
TARGET_OBJECTS_CC  += $(patsubst %.c,%.o,$(TARGET_SOURCES_CC))
TARGET_SOURCES_PP  += $(foreach dir,$(SOURCE_DIRS),$(wildcard $(dir)/*.cpp))
TARGET_OBJECTS_PP  += $(patsubst %.cpp,%.o,$(TARGET_SOURCES_PP))

TARGET_HEADER_DIRS += $(foreach dir,$(SOURCE_DIRS),-I$(dir))

# libraries to be linked with.[NOTICE: also defined in .make/config]
TARGET_LIBS += -lstdc++

ifeq (${PLATFORM_ARCH},${PLATFORM_ARCH_DARWIN})
    TARGET_BIN_EXT         :=
    TARGET_LIB_EXT_STATIC  := .a
    TARGET_LIB_EXT_DYNAMIC := .so
endif
ifeq (${PLATFORM_ARCH},${PLATFORM_ARCH_LINUX})
    TARGET_BIN_EXT         :=
    TARGET_LIB_EXT_STATIC  := .a
    TARGET_LIB_EXT_DYNAMIC := .so
endif
ifeq (${PLATFORM_ARCH},${PLATFORM_ARCH_FreeBSD})
    TARGET_BIN_EXT         := 
    TARGET_LIB_EXT_STATIC  := .a
    TARGET_LIB_EXT_DYNAMIC := .so
endif

ifeq ($(TARGET_TYPE_LIB),$(MK_TRUE))
TARGETS += ${TARGET_LIB_DIR}/${TARGET_NAME}${TARGET_LIB_EXT_STATIC}
endif
ifeq ($(TARGET_TYPE_DLL),$(MK_TRUE))
TARGETS += ${TARGET_LIB_DIR}/${TARGET_NAME}${TARGET_LIB_EXT_DYNAMIC}
endif
ifeq ($(TARGET_TYPE_BIN),$(MK_TRUE))
TARGETS += ${TARGET_BIN_DIR}/${TARGET_NAME}${TARGET_BIN_EXT}
endif

ALL : $(DEPEND_TARGETS) $(TARGETS)
	
${TARGET_LIB_DIR}/${TARGET_NAME}${TARGET_LIB_EXT_STATIC}:$(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(AR) -crvs $@ $^

${TARGET_LIB_DIR}/${TARGET_NAME}${TARGET_LIB_EXT_DYNAMIC}:$(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
	$(CC) -fPIC -shared  -o $@ $^ ${LDFLAGS} $(TARGET_LIBS)

${TARGET_BIN_DIR}/${TARGET_NAME}${TARGET_BIN_EXT}: $(TARGET_OBJECTS_PP) $(TARGET_OBJECTS_CC) $(TARGET_OBJECTS_AS)
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
	rm -f ${TARGET_LIB_DIR}/*
	rm -f ${TARGET_BIN_DIR}/*
prepare:$(PREPARE_TARGETS)
ifdef SUPER_MAKE_CONFIG_DIR
	-rm $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "DEPEND_TARGETS += $(TARGET_NAME).build"                                            >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "ECHO_TARGETS += $(TARGET_NAME).echo"                                               >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).build:"                                                             >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${SUPER_MAKE_DIR}               >> ${MAKE_CONFIG_DIR}/super" >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${SUPER_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super" >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) && $(MAKE) install"                                >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
ifneq (${SUPER_MAKE_CONFIG_DIR},${ROOT_MAKE_CONFIG_DIR})
	@echo "$(TARGET_NAME).echo:"                                                              >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${SUPER_MAKE_DIR}               >> ${MAKE_CONFIG_DIR}/super" >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${SUPER_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super" >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) echo"                                              >> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"
endif
endif
ifdef ROOT_MAKE_CONFIG_DIR
ifneq (${ROOT_MAKE_CONFIG_DIR},${MAKE_CONFIG_DIR})
ifneq (${SUPER_MAKE_CONFIG_DIR},${ROOT_MAKE_CONFIG_DIR})
	-rm $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
endif
	@echo "UPDATE_TARGETS  += $(TARGET_NAME).update"                                          >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "PUBLISH_TARGETS += $(TARGET_NAME).publish"                                         >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "ECHO_TARGETS    += $(TARGET_NAME).echo"                                         >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME):"                                                                   >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}               >> ${MAKE_CONFIG_DIR}/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) && $(MAKE) install"                                >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).clean:"                                                             >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}          >> ${MAKE_CONFIG_DIR}/super"       >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) clean"                                             >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).prepare:"                                                           >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}          >> ${MAKE_CONFIG_DIR}/super"       >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) prepare"                                           >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).install:"                                                           >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}          >> ${MAKE_CONFIG_DIR}/super"       >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) install"                                           >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).uninstall:"                                                         >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}          >> ${MAKE_CONFIG_DIR}/super"       >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) uninstall"                                         >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).publish:"                                                           >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}          >> ${MAKE_CONFIG_DIR}/super"       >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) publish"                                           >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).update:"                                                            >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}          >> ${MAKE_CONFIG_DIR}/super"       >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) update"                                            >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "$(TARGET_NAME).echo:"                                                              >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_DIR=${ROOT_MAKE_DIR}          >> ${MAKE_CONFIG_DIR}/super"       >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	@echo SUPER_MAKE_CONFIG_DIR=${ROOT_MAKE_CONFIG_DIR} >> $(MAKE_CONFIG_DIR)/super"  >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	cd $(MAKE_FILE_DIR) && $(MAKE) echo"                                              >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
	@echo "	-rm $(MAKE_CONFIG_DIR)/super"                                                     >> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
endif
endif
ifndef ROOT_MAKE_CONFIG_DIR
	echo "no ROOT_MAKE_CONFIG_DIR found."
endif
install :
	-rm -rf $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	-rm -rf $(BINARY_INSTALL_PATH)/$(TARGET_NAME)${TARGET_BIN_EXT}
	-rm -rf $(LIBRARY_INSTALL_PATH)/$(TARGET_NAME).*
	-mkdir  $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	-cp     $(TARGET_HEADERS) $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	-cp     $(TARGET_LIB_DIR)/$(TARGET_NAME).*                $(LIBRARY_INSTALL_PATH)
	-cp     $(TARGET_BIN_DIR)/$(TARGET_NAME)${TARGET_BIN_EXT} $(BINARY_INSTALL_PATH)
uninstall : 
	-rm -rf $(HEADER_INSTALL_PATH)/$(TARGET_NAME)
	-rm -rf $(BINARY_INSTALL_PATH)/$(TARGET_NAME)${TARGET_BIN_EXT}
	-rm -rf $(LIBRARY_INSTALL_PATH)/$(TARGET_NAME).*
publish:$(PUBLISH_TARGETS)
	-git add . && git commit -m "$(shell date)" && git push
update:$(UPDATE_TARGETS)
	-git pull
echo:$(ECHO_TARGETS)
	@echo TARGET_NAME:$(TARGET_NAME)
	@echo HEADER_INSTALL_PATH:$(HEADER_INSTALL_PATH)
	@echo BINARY_INSTALL_PATH:$(BINARY_INSTALL_PATH)
	@echo LIBRARY_INSTALL_PATH:$(LIBRARY_INSTALL_PATH)
	@echo DEPENDS_LIBRARY_PATH:$(DEPENDS_LIBRARY_PATH)
	@echo DEPENDS_THIRDS_PATH:$(DEPENDS_THIRDS_PATH)
	@echo SUPER_MAKE_DIR:$(SUPER_MAKE_DIR)
	@echo SUPER_MAKE_CONFIG_DIR:$(SUPER_MAKE_CONFIG_DIR)
	@echo ROOT_MAKE_DIR:${ROOT_MAKE_DIR}
	@echo ROOT_MAKE_CONFIG_DIR:${ROOT_MAKE_CONFIG_DIR}
	@echo TOOLCHAIN_AS:${AS}
	@echo TOOLCHAIN_CC:${CC}
	@echo TOOLCHAIN_PP:${PP}
	@echo TOOLCHAIN_AR:${AR}
	@echo TOOLCHAIN_LD:${LD}
	@echo ASFLAGS:${ASFLAGS}
	@echo CCFLAGS:${CCFLAGS}
	@echo PPFLAGS:${PPFLAGS}
	@echo ARFLAGS:${ARFLAGS}
	@echo LDFLAGS:${LDFLAGS}