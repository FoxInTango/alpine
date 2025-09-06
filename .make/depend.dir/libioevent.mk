DEPEND_TARGETS  += libioevent.recursive
UPDATE_TARGETS  += libioevent.update
PUBLISH_TARGETS += libioevent.publish
ECHO_TARGETS    += libioevent.echo
libioevent:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make && make install
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make clean
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make prepare
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make install
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make uninstall
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make publish
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make update
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
libioevent.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libioevent/.make/super
	cd /home/lidali/alpine/libraries/libioevent/ && make echo
	-rm /home/lidali/alpine/libraries/libioevent/.make/super
