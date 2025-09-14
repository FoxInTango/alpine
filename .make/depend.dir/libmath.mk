DEPEND_TARGETS  += libmath.recursive
UPDATE_TARGETS  += libmath.update
PUBLISH_TARGETS += libmath.publish
ECHO_TARGETS    += libmath.echo
libmath:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make install
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make update
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
libmath.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libmath/.make/super
	cd /volumes/llama/home/alpine/libraries/libmath/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libmath/.make/super
