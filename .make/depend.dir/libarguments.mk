DEPEND_TARGETS  += libarguments.recursive
UPDATE_TARGETS  += libarguments.update
PUBLISH_TARGETS += libarguments.publish
ECHO_TARGETS    += libarguments.echo
libarguments:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make && make install
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make clean
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make prepare
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make install
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make uninstall
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make publish
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make update
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
libarguments.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libarguments/.make/super
	cd /home/lidali/alpine/libraries/libarguments/ && make echo
	-rm /home/lidali/alpine/libraries/libarguments/.make/super
