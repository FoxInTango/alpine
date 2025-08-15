UPDATE_TARGETS  += libcpp.update
PUBLISH_TARGETS += libcpp.publish
libcpp:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
libcpp.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
libcpp.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
libcpp.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
libcpp.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
libcpp.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
libcpp.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
libcpp.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libcpp/.make/super
