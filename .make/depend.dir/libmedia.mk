DEPEND_TARGETS  += libmedia.recursive
UPDATE_TARGETS  += libmedia.update
PUBLISH_TARGETS += libmedia.publish
ECHO_TARGETS    += libmedia.echo
libmedia:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make install
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make update
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
libmedia.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmedia/.make/super
	cd /volumes/llama/home/alpine/libraries/libmedia/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libmedia/.make/super
