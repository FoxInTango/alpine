DEPEND_TARGETS  += libkms.recursive
UPDATE_TARGETS  += libkms.update
PUBLISH_TARGETS += libkms.publish
ECHO_TARGETS    += libkms.echo
libkms:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make && make install
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make clean
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make prepare
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make install
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make uninstall
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make publish
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make update
	-rm /home/lidali/alpine/libraries/libkms/.make/super
libkms.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libkms/.make/super
	cd /home/lidali/alpine/libraries/libkms/ && make echo
	-rm /home/lidali/alpine/libraries/libkms/.make/super
