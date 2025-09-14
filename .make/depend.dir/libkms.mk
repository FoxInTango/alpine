DEPEND_TARGETS  += libkms.recursive
UPDATE_TARGETS  += libkms.update
PUBLISH_TARGETS += libkms.publish
ECHO_TARGETS    += libkms.echo
libkms:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make install
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make update
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
libkms.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libkms/.make/super
	cd /volumes/llama/home/alpine/libraries/libkms/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libkms/.make/super
