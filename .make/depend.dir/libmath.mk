DEPEND_TARGETS  += libmath.recursive
UPDATE_TARGETS  += libmath.update
PUBLISH_TARGETS += libmath.publish
ECHO_TARGETS    += libmath.echo
libmath:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make && make install
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make clean
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make prepare
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make install
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make uninstall
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make publish
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make update
	-rm /home/lidali/alpine/libraries/libmath/.make/super
libmath.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmath/.make/super
	cd /home/lidali/alpine/libraries/libmath/ && make echo
	-rm /home/lidali/alpine/libraries/libmath/.make/super
