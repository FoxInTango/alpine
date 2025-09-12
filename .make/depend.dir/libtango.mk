DEPEND_TARGETS  += libtango.recursive
UPDATE_TARGETS  += libtango.update
PUBLISH_TARGETS += libtango.publish
ECHO_TARGETS    += libtango.echo
libtango:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make && make install
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make clean
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make prepare
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make install
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make uninstall
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make publish
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make update
	-rm /home/lidali/alpine/libraries/libtango/.make/super
libtango.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libtango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libtango/.make/super
	cd /home/lidali/alpine/libraries/libtango/ && make echo
	-rm /home/lidali/alpine/libraries/libtango/.make/super
