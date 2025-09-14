DEPEND_TARGETS  += libav.recursive
UPDATE_TARGETS  += libav.update
PUBLISH_TARGETS += libav.publish
ECHO_TARGETS    += libav.echo
libav:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make install
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make update
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
libav.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libav/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libav/.make/super
	cd /volumes/llama/home/alpine/libraries/libav/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libav/.make/super
