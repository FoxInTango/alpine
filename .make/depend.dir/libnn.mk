DEPEND_TARGETS  += libnn.recursive
UPDATE_TARGETS  += libnn.update
PUBLISH_TARGETS += libnn.publish
ECHO_TARGETS    += libnn.echo
libnn:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make && make install
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make clean
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make prepare
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make install
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make uninstall
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make publish
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make update
	-rm /home/lidali/alpine/libraries/libnn/.make/super
libnn.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libnn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libnn/.make/super
	cd /home/lidali/alpine/libraries/libnn/ && make echo
	-rm /home/lidali/alpine/libraries/libnn/.make/super
