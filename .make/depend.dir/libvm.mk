DEPEND_TARGETS  += libvm.recursive
UPDATE_TARGETS  += libvm.update
PUBLISH_TARGETS += libvm.publish
ECHO_TARGETS    += libvm.echo
libvm:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make && make install
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make clean
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make prepare
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make install
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make uninstall
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make publish
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make update
	-rm /home/lidali/alpine/libraries/libvm/.make/super
libvm.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libvm/.make/super
	cd /home/lidali/alpine/libraries/libvm/ && make echo
	-rm /home/lidali/alpine/libraries/libvm/.make/super
