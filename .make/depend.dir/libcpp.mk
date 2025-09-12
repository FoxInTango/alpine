DEPEND_TARGETS  += libcpp.recursive
UPDATE_TARGETS  += libcpp.update
PUBLISH_TARGETS += libcpp.publish
ECHO_TARGETS    += libcpp.echo
libcpp:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make && make install
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make clean
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make prepare
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make install
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make uninstall
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make publish
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make update
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
libcpp.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcpp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcpp/.make/super
	cd /home/lidali/alpine/libraries/libcpp/ && make echo
	-rm /home/lidali/alpine/libraries/libcpp/.make/super
