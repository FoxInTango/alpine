DEPEND_TARGETS  += libcl.recursive
UPDATE_TARGETS  += libcl.update
PUBLISH_TARGETS += libcl.publish
ECHO_TARGETS    += libcl.echo
libcl:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.recursive:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make recursive && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
libcl.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcl/.make/super
