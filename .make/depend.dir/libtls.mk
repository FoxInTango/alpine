DEPEND_TARGETS  += libtls.recursive
UPDATE_TARGETS  += libtls.update
PUBLISH_TARGETS += libtls.publish
ECHO_TARGETS    += libtls.echo
libtls:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make && make install
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make clean
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make prepare
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make install
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make uninstall
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make publish
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make update
	-rm /home/lidali/alpine/libraries/libtls/.make/super
libtls.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtls/.make/super
	cd /home/lidali/alpine/libraries/libtls/ && make echo
	-rm /home/lidali/alpine/libraries/libtls/.make/super
