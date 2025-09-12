DEPEND_TARGETS  += libtts.recursive
UPDATE_TARGETS  += libtts.update
PUBLISH_TARGETS += libtts.publish
ECHO_TARGETS    += libtts.echo
libtts:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make && make install
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make clean
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make prepare
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make install
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make uninstall
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make publish
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make update
	-rm /home/lidali/alpine/libraries/libtts/.make/super
libtts.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtts/.make/super
	cd /home/lidali/alpine/libraries/libtts/ && make echo
	-rm /home/lidali/alpine/libraries/libtts/.make/super
