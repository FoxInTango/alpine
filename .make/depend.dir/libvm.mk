DEPEND_TARGETS  += libvm.recursive
UPDATE_TARGETS  += libvm.update
PUBLISH_TARGETS += libvm.publish
ECHO_TARGETS    += libvm.echo
libvm:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make install
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make update
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
libvm.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvm/.make/super
	cd /volumes/llama/home/alpine/libraries/libvm/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libvm/.make/super
