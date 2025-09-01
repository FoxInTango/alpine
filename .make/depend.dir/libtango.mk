DEPEND_TARGETS  += libtango.recursive
UPDATE_TARGETS  += libtango.update
PUBLISH_TARGETS += libtango.publish
ECHO_TARGETS    += libtango.echo
libtango:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.recursive:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make recursive && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
libtango.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libtango/.make/super
