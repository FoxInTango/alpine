DEPEND_TARGETS  += libioevent.recursive
UPDATE_TARGETS  += libioevent.update
PUBLISH_TARGETS += libioevent.publish
ECHO_TARGETS    += libioevent.echo
libioevent:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make install
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make update
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
libioevent.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libioevent/.make/super
	cd /volumes/llama/home/alpine/libraries/libioevent/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libioevent/.make/super
