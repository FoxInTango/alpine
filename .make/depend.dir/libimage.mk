DEPEND_TARGETS  += libimage.recursive
UPDATE_TARGETS  += libimage.update
PUBLISH_TARGETS += libimage.publish
ECHO_TARGETS    += libimage.echo
libimage:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make install
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make update
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
libimage.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libimage/.make/super
	cd /volumes/llama/home/alpine/libraries/libimage/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libimage/.make/super
