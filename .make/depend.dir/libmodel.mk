DEPEND_TARGETS  += libmodel.recursive
UPDATE_TARGETS  += libmodel.update
PUBLISH_TARGETS += libmodel.publish
ECHO_TARGETS    += libmodel.echo
libmodel:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make && make install
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make clean
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make prepare
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make install
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make uninstall
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make publish
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make update
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
libmodel.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libmodel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libmodel/.make/super
	cd /home/lidali/alpine/libraries/libmodel/ && make echo
	-rm /home/lidali/alpine/libraries/libmodel/.make/super
