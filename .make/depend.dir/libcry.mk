DEPEND_TARGETS  += libcry.recursive
UPDATE_TARGETS  += libcry.update
PUBLISH_TARGETS += libcry.publish
ECHO_TARGETS    += libcry.echo
libcry:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make clean
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make install
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make publish
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make update
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
libcry.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/libcry/.make/super
	cd /volumes/llama/home/alpine/libraries/libcry/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libcry/.make/super
