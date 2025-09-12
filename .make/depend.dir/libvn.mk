DEPEND_TARGETS  += libvn.recursive
UPDATE_TARGETS  += libvn.update
PUBLISH_TARGETS += libvn.publish
ECHO_TARGETS    += libvn.echo
libvn:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make && make install
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make clean
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make prepare
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make install
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make uninstall
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make publish
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make update
	-rm /home/lidali/alpine/libraries/libvn/.make/super
libvn.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvn/.make/super
	cd /home/lidali/alpine/libraries/libvn/ && make echo
	-rm /home/lidali/alpine/libraries/libvn/.make/super
