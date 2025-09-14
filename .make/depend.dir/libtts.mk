DEPEND_TARGETS  += libtts.recursive
UPDATE_TARGETS  += libtts.update
PUBLISH_TARGETS += libtts.publish
ECHO_TARGETS    += libtts.echo
libtts:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make install
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make update
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
libtts.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libtts/.make/super
	cd /volumes/llama/home/alpine/libraries/libtts/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libtts/.make/super
