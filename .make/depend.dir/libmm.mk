DEPEND_TARGETS  += libmm.recursive
UPDATE_TARGETS  += libmm.update
PUBLISH_TARGETS += libmm.publish
ECHO_TARGETS    += libmm.echo
libmm:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make && make install
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make clean
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make prepare
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make install
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make uninstall
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make publish
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make update
	-rm /home/lidali/alpine/libraries/libmm/.make/super
libmm.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmm/.make/super
	cd /home/lidali/alpine/libraries/libmm/ && make echo
	-rm /home/lidali/alpine/libraries/libmm/.make/super
