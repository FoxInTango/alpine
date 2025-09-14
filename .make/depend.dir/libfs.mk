DEPEND_TARGETS  += libfs.recursive
UPDATE_TARGETS  += libfs.update
PUBLISH_TARGETS += libfs.publish
ECHO_TARGETS    += libfs.echo
libfs:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make install
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make update
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
libfs.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfs/.make/super
	cd /volumes/llama/home/alpine/libraries/libfs/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libfs/.make/super
