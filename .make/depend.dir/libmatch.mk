DEPEND_TARGETS  += libmatch.recursive
UPDATE_TARGETS  += libmatch.update
PUBLISH_TARGETS += libmatch.publish
ECHO_TARGETS    += libmatch.echo
libmatch:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make && make install
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make clean
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make prepare
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make install
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make uninstall
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make publish
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make update
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
libmatch.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmatch/.make/super
	cd /home/lidali/alpine/libraries/libmatch/ && make echo
	-rm /home/lidali/alpine/libraries/libmatch/.make/super
