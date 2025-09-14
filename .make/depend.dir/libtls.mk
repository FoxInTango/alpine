DEPEND_TARGETS  += libtls.recursive
UPDATE_TARGETS  += libtls.update
PUBLISH_TARGETS += libtls.publish
ECHO_TARGETS    += libtls.echo
libtls:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make install
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make update
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
libtls.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtls/.make/super
	cd /volumes/llama/home/alpine/libraries/libtls/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libtls/.make/super
