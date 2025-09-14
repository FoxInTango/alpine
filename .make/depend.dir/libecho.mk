DEPEND_TARGETS  += libecho.recursive
UPDATE_TARGETS  += libecho.update
PUBLISH_TARGETS += libecho.publish
ECHO_TARGETS    += libecho.echo
libecho:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make install
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make update
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
libecho.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libecho/.make/super
	cd /volumes/llama/home/alpine/libraries/libecho/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libecho/.make/super
