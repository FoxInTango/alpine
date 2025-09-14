DEPEND_TARGETS  += libmodule.recursive
UPDATE_TARGETS  += libmodule.update
PUBLISH_TARGETS += libmodule.publish
ECHO_TARGETS    += libmodule.echo
libmodule:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make install
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make update
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
libmodule.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmodule/.make/super
	cd /volumes/llama/home/alpine/libraries/libmodule/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libmodule/.make/super
