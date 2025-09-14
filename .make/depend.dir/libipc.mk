DEPEND_TARGETS  += libipc.recursive
UPDATE_TARGETS  += libipc.update
PUBLISH_TARGETS += libipc.publish
ECHO_TARGETS    += libipc.echo
libipc:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make install
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make update
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
libipc.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libipc/.make/super
	cd /volumes/llama/home/alpine/libraries/libipc/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libipc/.make/super
