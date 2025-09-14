DEPEND_TARGETS  += libplatform.recursive
UPDATE_TARGETS  += libplatform.update
PUBLISH_TARGETS += libplatform.publish
ECHO_TARGETS    += libplatform.echo
libplatform:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make install
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make update
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
libplatform.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libplatform/.make/super
	cd /volumes/llama/home/alpine/libraries/libplatform/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libplatform/.make/super
