DEPEND_TARGETS  += libav.recursive
UPDATE_TARGETS  += libav.update
PUBLISH_TARGETS += libav.publish
ECHO_TARGETS    += libav.echo
libav:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make && make install
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make clean
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make prepare
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make install
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make uninstall
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make publish
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make update
	-rm /home/lidali/alpine/libraries/libav/.make/super
libav.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libav/.make/super
	cd /home/lidali/alpine/libraries/libav/ && make echo
	-rm /home/lidali/alpine/libraries/libav/.make/super
