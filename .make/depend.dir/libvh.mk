DEPEND_TARGETS  += libvh.recursive
UPDATE_TARGETS  += libvh.update
PUBLISH_TARGETS += libvh.publish
ECHO_TARGETS    += libvh.echo
libvh:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make install
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make update
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
libvh.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libvh/.make/super
	cd /volumes/llama/home/alpine/libraries/libvh/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libvh/.make/super
