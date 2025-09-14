DEPEND_TARGETS  += libarguments.recursive
UPDATE_TARGETS  += libarguments.update
PUBLISH_TARGETS += libarguments.publish
ECHO_TARGETS    += libarguments.echo
libarguments:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make install
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make update
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
libarguments.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libarguments/.make/super
	cd /volumes/llama/home/alpine/libraries/libarguments/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libarguments/.make/super
