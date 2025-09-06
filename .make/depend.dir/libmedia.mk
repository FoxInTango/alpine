DEPEND_TARGETS  += libmedia.recursive
UPDATE_TARGETS  += libmedia.update
PUBLISH_TARGETS += libmedia.publish
ECHO_TARGETS    += libmedia.echo
libmedia:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make && make install
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make clean
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make prepare
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make install
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make uninstall
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make publish
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make update
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
libmedia.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmedia/.make/super
	cd /home/lidali/alpine/libraries/libmedia/ && make echo
	-rm /home/lidali/alpine/libraries/libmedia/.make/super
