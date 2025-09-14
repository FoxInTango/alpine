DEPEND_TARGETS  += libhttp.recursive
UPDATE_TARGETS  += libhttp.update
PUBLISH_TARGETS += libhttp.publish
ECHO_TARGETS    += libhttp.echo
libhttp:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make install
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make update
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
libhttp.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libhttp/.make/super
	cd /volumes/llama/home/alpine/libraries/libhttp/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libhttp/.make/super
