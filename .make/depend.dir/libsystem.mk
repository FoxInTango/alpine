DEPEND_TARGETS  += libsystem.recursive
UPDATE_TARGETS  += libsystem.update
PUBLISH_TARGETS += libsystem.publish
ECHO_TARGETS    += libsystem.echo
libsystem:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make && make install
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make clean
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make prepare
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make install
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make uninstall
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make publish
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make update
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
libsystem.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libsystem/.make/super
	cd /home/lidali/alpine/libraries/libsystem/ && make echo
	-rm /home/lidali/alpine/libraries/libsystem/.make/super
