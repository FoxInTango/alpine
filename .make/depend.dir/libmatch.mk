DEPEND_TARGETS  += libmatch.recursive
UPDATE_TARGETS  += libmatch.update
PUBLISH_TARGETS += libmatch.publish
ECHO_TARGETS    += libmatch.echo
libmatch:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make install
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make update
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
libmatch.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmatch/.make/super
	cd /volumes/llama/home/alpine/libraries/libmatch/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libmatch/.make/super
