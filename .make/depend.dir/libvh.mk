DEPEND_TARGETS  += libvh.recursive
UPDATE_TARGETS  += libvh.update
PUBLISH_TARGETS += libvh.publish
ECHO_TARGETS    += libvh.echo
libvh:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make && make install
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make clean
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make prepare
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make install
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make uninstall
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make publish
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make update
	-rm /home/lidali/alpine/libraries/libvh/.make/super
libvh.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvh/.make/super
	cd /home/lidali/alpine/libraries/libvh/ && make echo
	-rm /home/lidali/alpine/libraries/libvh/.make/super
