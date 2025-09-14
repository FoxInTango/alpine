DEPEND_TARGETS  += libfft.recursive
UPDATE_TARGETS  += libfft.update
PUBLISH_TARGETS += libfft.publish
ECHO_TARGETS    += libfft.echo
libfft:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make install
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make update
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
libfft.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libfft/.make/super
	cd /volumes/llama/home/alpine/libraries/libfft/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libfft/.make/super
