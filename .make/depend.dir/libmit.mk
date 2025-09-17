DEPEND_TARGETS  += libmit.recursive
UPDATE_TARGETS  += libmit.update
PUBLISH_TARGETS += libmit.publish
ECHO_TARGETS    += libmit.echo
libmit:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make install
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make update
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
libmit.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmit/.make/super
	cd /volumes/llama/home/alpine/libraries/libmit/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libmit/.make/super
