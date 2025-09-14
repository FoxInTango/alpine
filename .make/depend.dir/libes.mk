DEPEND_TARGETS  += libes.recursive
UPDATE_TARGETS  += libes.update
PUBLISH_TARGETS += libes.publish
ECHO_TARGETS    += libes.echo
libes:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make install
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make update
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
