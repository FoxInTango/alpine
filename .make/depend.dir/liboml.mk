DEPEND_TARGETS  += liboml.recursive
UPDATE_TARGETS  += liboml.update
PUBLISH_TARGETS += liboml.publish
ECHO_TARGETS    += liboml.echo
liboml:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make clean
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make install
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make publish
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make update
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
liboml.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/liboml/.make/super
	cd /volumes/llama/home/alpine/libraries/liboml/ && make echo
	-rm /volumes/llama/home/alpine/libraries/liboml/.make/super
