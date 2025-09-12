DEPEND_TARGETS  += libcry.recursive
UPDATE_TARGETS  += libcry.update
PUBLISH_TARGETS += libcry.publish
ECHO_TARGETS    += libcry.echo
libcry:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make && make install
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make clean
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make prepare
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make install
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make uninstall
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make publish
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make update
	-rm /home/lidali/alpine/libraries/libcry/.make/super
libcry.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcry/.make/super
	cd /home/lidali/alpine/libraries/libcry/ && make echo
	-rm /home/lidali/alpine/libraries/libcry/.make/super
