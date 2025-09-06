DEPEND_TARGETS  += libelf.recursive
UPDATE_TARGETS  += libelf.update
PUBLISH_TARGETS += libelf.publish
ECHO_TARGETS    += libelf.echo
libelf:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make && make install
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make clean
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make prepare
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make install
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make uninstall
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make publish
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make update
	-rm /home/lidali/alpine/libraries/libelf/.make/super
libelf.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libelf/.make/super
	cd /home/lidali/alpine/libraries/libelf/ && make echo
	-rm /home/lidali/alpine/libraries/libelf/.make/super
