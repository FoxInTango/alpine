DEPEND_TARGETS  += lib2d.recursive
UPDATE_TARGETS  += lib2d.update
PUBLISH_TARGETS += lib2d.publish
ECHO_TARGETS    += lib2d.echo
lib2d:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make clean
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make install
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make publish
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make update
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
lib2d.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib2d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib2d/ && make echo
	-rm /volumes/llama/home/alpine/libraries/lib2d/.make/super
