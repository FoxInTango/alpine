DEPEND_TARGETS  += libvn.recursive
UPDATE_TARGETS  += libvn.update
PUBLISH_TARGETS += libvn.publish
ECHO_TARGETS    += libvn.echo
libvn:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make install
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make update
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
libvn.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvn/.make/super
	cd /volumes/llama/home/alpine/libraries/libvn/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libvn/.make/super
