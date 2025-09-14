DEPEND_TARGETS  += libstream.recursive
UPDATE_TARGETS  += libstream.update
PUBLISH_TARGETS += libstream.publish
ECHO_TARGETS    += libstream.echo
libstream:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make install
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make update
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
libstream.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstream/.make/super
	cd /volumes/llama/home/alpine/libraries/libstream/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libstream/.make/super
