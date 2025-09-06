DEPEND_TARGETS  += libwv.recursive
UPDATE_TARGETS  += libwv.update
PUBLISH_TARGETS += libwv.publish
ECHO_TARGETS    += libwv.echo
libwv:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make && make install
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make clean
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make prepare
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make install
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make uninstall
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make publish
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make update
	-rm /home/lidali/alpine/libraries/libwv/.make/super
libwv.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwv/.make/super
	cd /home/lidali/alpine/libraries/libwv/ && make echo
	-rm /home/lidali/alpine/libraries/libwv/.make/super
