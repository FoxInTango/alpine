DEPEND_TARGETS  += libevent.recursive
UPDATE_TARGETS  += libevent.update
PUBLISH_TARGETS += libevent.publish
ECHO_TARGETS    += libevent.echo
libevent:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make install
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make update
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
libevent.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libevent/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libevent/.make/super
