DEPEND_TARGETS  += libmm.recursive
UPDATE_TARGETS  += libmm.update
PUBLISH_TARGETS += libmm.publish
ECHO_TARGETS    += libmm.echo
libmm:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make install
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make update
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
libmm.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmm/.make/super
	cd /volumes/llama/home/alpine/libraries/libmm/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libmm/.make/super
