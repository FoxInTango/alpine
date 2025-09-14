DEPEND_TARGETS  += libstt.recursive
UPDATE_TARGETS  += libstt.update
PUBLISH_TARGETS += libstt.publish
ECHO_TARGETS    += libstt.echo
libstt:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make install
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make update
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
libstt.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstt/.make/super
	cd /volumes/llama/home/alpine/libraries/libstt/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libstt/.make/super
