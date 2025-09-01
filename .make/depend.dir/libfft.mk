DEPEND_TARGETS  += libfft.recursive
UPDATE_TARGETS  += libfft.update
PUBLISH_TARGETS += libfft.publish
ECHO_TARGETS    += libfft.echo
libfft:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.recursive:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make recursive && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
libfft.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libfft/.make/super
