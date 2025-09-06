DEPEND_TARGETS  += libwl.recursive
UPDATE_TARGETS  += libwl.update
PUBLISH_TARGETS += libwl.publish
ECHO_TARGETS    += libwl.echo
libwl:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make && make install
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make clean
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make prepare
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make install
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make uninstall
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make publish
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make update
	-rm /home/lidali/alpine/libraries/libwl/.make/super
libwl.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libwl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libwl/.make/super
	cd /home/lidali/alpine/libraries/libwl/ && make echo
	-rm /home/lidali/alpine/libraries/libwl/.make/super
