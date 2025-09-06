DEPEND_TARGETS  += libgl.recursive
UPDATE_TARGETS  += libgl.update
PUBLISH_TARGETS += libgl.publish
ECHO_TARGETS    += libgl.echo
libgl:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make && make install
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make clean
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make prepare
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make install
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make uninstall
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make publish
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make update
	-rm /home/lidali/alpine/libraries/libgl/.make/super
libgl.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libgl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libgl/.make/super
	cd /home/lidali/alpine/libraries/libgl/ && make echo
	-rm /home/lidali/alpine/libraries/libgl/.make/super
