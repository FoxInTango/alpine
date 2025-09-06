DEPEND_TARGETS  += liburl.recursive
UPDATE_TARGETS  += liburl.update
PUBLISH_TARGETS += liburl.publish
ECHO_TARGETS    += liburl.echo
liburl:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make && make install
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make clean
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make prepare
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make install
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make uninstall
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make publish
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make update
	-rm /home/lidali/alpine/libraries/liburl/.make/super
liburl.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liburl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liburl/.make/super
	cd /home/lidali/alpine/libraries/liburl/ && make echo
	-rm /home/lidali/alpine/libraries/liburl/.make/super
