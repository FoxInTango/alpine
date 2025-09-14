DEPEND_TARGETS  += libsystem.recursive
UPDATE_TARGETS  += libsystem.update
PUBLISH_TARGETS += libsystem.publish
ECHO_TARGETS    += libsystem.echo
libsystem:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make install
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make update
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
libsystem.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libsystem/.make/super
	cd /volumes/llama/home/alpine/libraries/libsystem/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libsystem/.make/super
