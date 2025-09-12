DEPEND_TARGETS  += libfsevent.recursive
UPDATE_TARGETS  += libfsevent.update
PUBLISH_TARGETS += libfsevent.publish
ECHO_TARGETS    += libfsevent.echo
libfsevent:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make && make install
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make clean
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make prepare
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make install
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make uninstall
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make publish
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make update
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
libfsevent.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfsevent/.make/super
	cd /home/lidali/alpine/libraries/libfsevent/ && make echo
	-rm /home/lidali/alpine/libraries/libfsevent/.make/super
