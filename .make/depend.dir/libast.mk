DEPEND_TARGETS  += libast.recursive
UPDATE_TARGETS  += libast.update
PUBLISH_TARGETS += libast.publish
ECHO_TARGETS    += libast.echo
libast:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make install
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make update
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
libast.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libast/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libast/.make/super
	cd /volumes/llama/home/alpine/libraries/libast/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libast/.make/super
