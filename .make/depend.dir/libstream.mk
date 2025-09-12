DEPEND_TARGETS  += libstream.recursive
UPDATE_TARGETS  += libstream.update
PUBLISH_TARGETS += libstream.publish
ECHO_TARGETS    += libstream.echo
libstream:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make && make install
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make clean
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make prepare
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make install
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make uninstall
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make publish
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make update
	-rm /home/lidali/alpine/libraries/libstream/.make/super
libstream.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libstream/.make/super
	cd /home/lidali/alpine/libraries/libstream/ && make echo
	-rm /home/lidali/alpine/libraries/libstream/.make/super
