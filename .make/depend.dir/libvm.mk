DEPEND_TARGETS  += libvm.recursive
UPDATE_TARGETS  += libvm.update
PUBLISH_TARGETS += libvm.publish
ECHO_TARGETS    += libvm.echo
libvm:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.recursive:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make recursive && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
libvm.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libvm/.make/super
