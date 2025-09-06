DEPEND_TARGETS  += libmodule.recursive
UPDATE_TARGETS  += libmodule.update
PUBLISH_TARGETS += libmodule.publish
ECHO_TARGETS    += libmodule.echo
libmodule:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make && make install
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make clean
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make prepare
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make install
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make uninstall
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make publish
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make update
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
libmodule.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodule/.make/super
	cd /home/lidali/alpine/libraries/libmodule/ && make echo
	-rm /home/lidali/alpine/libraries/libmodule/.make/super
