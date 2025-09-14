DEPEND_TARGETS  += libstring.recursive
UPDATE_TARGETS  += libstring.update
PUBLISH_TARGETS += libstring.publish
ECHO_TARGETS    += libstring.echo
libstring:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make install
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make update
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
