DEPEND_TARGETS  += libelf.recursive
UPDATE_TARGETS  += libelf.update
PUBLISH_TARGETS += libelf.publish
ECHO_TARGETS    += libelf.echo
libelf:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make install
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make update
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
libelf.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libelf/.make/super
	cd /volumes/llama/home/alpine/libraries/libelf/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libelf/.make/super
