DEPEND_TARGETS  += libipc.recursive
UPDATE_TARGETS  += libipc.update
PUBLISH_TARGETS += libipc.publish
ECHO_TARGETS    += libipc.echo
libipc:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make && make install
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make clean
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make prepare
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make install
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make uninstall
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make publish
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make update
	-rm /home/lidali/alpine/libraries/libipc/.make/super
libipc.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libipc/.make/super
	cd /home/lidali/alpine/libraries/libipc/ && make echo
	-rm /home/lidali/alpine/libraries/libipc/.make/super
