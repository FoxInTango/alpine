DEPEND_TARGETS  += libfft.recursive
UPDATE_TARGETS  += libfft.update
PUBLISH_TARGETS += libfft.publish
ECHO_TARGETS    += libfft.echo
libfft:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make && make install
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make clean
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make prepare
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make install
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make uninstall
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make publish
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make update
	-rm /home/lidali/alpine/libraries/libfft/.make/super
libfft.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libfft/.make/super
	cd /home/lidali/alpine/libraries/libfft/ && make echo
	-rm /home/lidali/alpine/libraries/libfft/.make/super
