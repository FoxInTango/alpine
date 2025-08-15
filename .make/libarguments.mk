UPDATE_TARGETS  += libarguments.update
PUBLISH_TARGETS += libarguments.publish
libarguments:
	@echo SUPER_MAKE_DIR=               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
libarguments.clean:
	@echo SUPER_MAKE_DIR=          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
libarguments.prepare:
	@echo SUPER_MAKE_DIR=          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
libarguments.install:
	@echo SUPER_MAKE_DIR=          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
libarguments.uninstall:
	@echo SUPER_MAKE_DIR=          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
libarguments.publish:
	@echo SUPER_MAKE_DIR=          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
libarguments.update:
	@echo SUPER_MAKE_DIR=          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
libarguments.echo:
	@echo SUPER_MAKE_DIR=          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR= >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make/super
