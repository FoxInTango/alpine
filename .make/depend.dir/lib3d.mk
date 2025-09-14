DEPEND_TARGETS  += lib3d.recursive
UPDATE_TARGETS  += lib3d.update
PUBLISH_TARGETS += lib3d.publish
ECHO_TARGETS    += lib3d.echo
lib3d:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make && make install
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make clean
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make prepare
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make install
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make uninstall
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make publish
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make update
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
lib3d.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/libraries/lib3d/.make/super
	cd /volumes/llama/home/alpine/libraries/lib3d/ && make echo
	-rm /volumes/llama/home/alpine/libraries/lib3d/.make/super
