DEPEND_TARGETS  += libkernel.recursive
UPDATE_TARGETS  += libkernel.update
PUBLISH_TARGETS += libkernel.publish
ECHO_TARGETS    += libkernel.echo
libkernel:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make && make install
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make clean
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make prepare
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make install
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make uninstall
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make publish
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make update
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
libkernel.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkernel/.make/super
	cd /home/lidali/alpine/libraries/libkernel/ && make echo
	-rm /home/lidali/alpine/libraries/libkernel/.make/super
