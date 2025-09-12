DEPEND_TARGETS  += libfs.recursive
UPDATE_TARGETS  += libfs.update
PUBLISH_TARGETS += libfs.publish
ECHO_TARGETS    += libfs.echo
libfs:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make && make install
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make clean
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make prepare
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make install
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make uninstall
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make publish
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make update
	-rm /home/lidali/alpine/libraries/libfs/.make/super
libfs.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfs/.make/super
	cd /home/lidali/alpine/libraries/libfs/ && make echo
	-rm /home/lidali/alpine/libraries/libfs/.make/super
