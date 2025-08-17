there must be a root project defined and the root project must supply dirs inc lib bin libraries applications ...

if super
    if  root
        if super == root
            -rm $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            DEPEND_TARGETS  += $(TARGET_NAME).build
            UPDATE_TARGETS  += $(TARGET_NAME).update
            PUBLISH_TARGETS += $(TARGET_NAME).publish
            ECHO_TARGETS    += $(TARGET_NAME).echo
            -- this       --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- prepare    --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- build      --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- clean      --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- install    --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- uninstall  --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- update     --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- publish    --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- echo       --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
        if super != root
            -rm $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            DEPEND_TARGETS += $(TARGET_NAME).build
            ECHO_TARGETS   += $(TARGET_NAME).echo
            -- build      --> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            -- echo       --> $(SUPER_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            if ! $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                DEPEND_TARGETS += $(TARGET_NAME).build
                ECHO_TARGETS   += $(TARGET_NAME).echo
                -- this       --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- prepare    --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- build      --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- clean      --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- install    --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- uninstall  --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- update     --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- publish    --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                -- echo       --> $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
                
                
    if !root
        NOTHING TODO
if !super
    if !root
    if root

ifdef SUPER_MAKE_CONFIG_DIR
ifdef ROOT_MAKE_CONFIG_DIR
        ifeq (${SUPER_MAKE_CONFIG_DIR},${ROOT_MAKE_CONFIG_DIR})
            -rm $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk
            prepare.1
        endif
        ifneq (${SUPER_MAKE_CONFIG_DIR},${ROOT_MAKE_CONFIG_DIR})
            prepare.2
            ifeq ($(wildcard $(ROOT_MAKE_CONFIG_DIR)/$(TARGET_NAME).mk),)
                prepare.3
            endif
        endif
    endif
endif
                
                
    if !root
        NOTHING TODO
if !super
    if !root
    if root