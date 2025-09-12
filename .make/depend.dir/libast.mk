DEPEND_TARGETS  += libast.recursive
UPDATE_TARGETS  += libast.update
PUBLISH_TARGETS += libast.publish
ECHO_TARGETS    += libast.echo
libast:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make && make install
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make clean
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make prepare
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make install
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make uninstall
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make publish
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make update
	-rm /home/lidali/alpine/libraries/libast/.make/super
libast.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libast/.make/super
	cd /home/lidali/alpine/libraries/libast/ && make echo
	-rm /home/lidali/alpine/libraries/libast/.make/super
