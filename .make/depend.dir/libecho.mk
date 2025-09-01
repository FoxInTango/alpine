DEPEND_TARGETS  += libecho.recursive
UPDATE_TARGETS  += libecho.update
PUBLISH_TARGETS += libecho.publish
ECHO_TARGETS    += libecho.echo
libecho:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.recursive:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make recursive && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
libecho.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libecho/.make/super
