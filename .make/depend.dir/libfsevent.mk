DEPEND_TARGETS  += libfsevent.recursive
UPDATE_TARGETS  += libfsevent.update
PUBLISH_TARGETS += libfsevent.publish
ECHO_TARGETS    += libfsevent.echo
libfsevent:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make install
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make update
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
libfsevent.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfsevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libfsevent/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libfsevent/.make/super
