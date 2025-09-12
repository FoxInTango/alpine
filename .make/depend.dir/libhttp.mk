DEPEND_TARGETS  += libhttp.recursive
UPDATE_TARGETS  += libhttp.update
PUBLISH_TARGETS += libhttp.publish
ECHO_TARGETS    += libhttp.echo
libhttp:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make && make install
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make clean
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make prepare
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make install
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make uninstall
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make publish
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make update
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
libhttp.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libhttp/.make/super
	cd /home/lidali/alpine/libraries/libhttp/ && make echo
	-rm /home/lidali/alpine/libraries/libhttp/.make/super
