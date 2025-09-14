DEPEND_TARGETS  += libwv.recursive
UPDATE_TARGETS  += libwv.update
PUBLISH_TARGETS += libwv.publish
ECHO_TARGETS    += libwv.echo
libwv:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make install
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make update
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
libwv.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libwv/.make/super
	cd /volumes/llama/home/alpine/libraries/libwv/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libwv/.make/super
