DEPEND_TARGETS  += libkernel.recursive
UPDATE_TARGETS  += libkernel.update
PUBLISH_TARGETS += libkernel.publish
ECHO_TARGETS    += libkernel.echo
libkernel:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make install
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make update
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
libkernel.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkernel/.make/super
	cd /volumes/llama/home/alpine/libraries/libkernel/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libkernel/.make/super
