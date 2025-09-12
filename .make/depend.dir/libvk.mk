DEPEND_TARGETS  += libvk.recursive
UPDATE_TARGETS  += libvk.update
PUBLISH_TARGETS += libvk.publish
ECHO_TARGETS    += libvk.echo
libvk:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make && make install
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make clean
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make prepare
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make install
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make uninstall
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make publish
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make update
	-rm /home/lidali/alpine/libraries/libvk/.make/super
libvk.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvk/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvk/.make/super
	cd /home/lidali/alpine/libraries/libvk/ && make echo
	-rm /home/lidali/alpine/libraries/libvk/.make/super
