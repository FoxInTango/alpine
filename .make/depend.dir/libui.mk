DEPEND_TARGETS  += libui.recursive
UPDATE_TARGETS  += libui.update
PUBLISH_TARGETS += libui.publish
ECHO_TARGETS    += libui.echo
libui:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make && make install
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make clean
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make prepare
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make install
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make uninstall
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make publish
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make update
	-rm /home/lidali/alpine/libraries/libui/.make/super
libui.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libui/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libui/.make/super
	cd /home/lidali/alpine/libraries/libui/ && make echo
	-rm /home/lidali/alpine/libraries/libui/.make/super
