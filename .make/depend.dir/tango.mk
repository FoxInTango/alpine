DEPEND_TARGETS  += tango.recursive
UPDATE_TARGETS  += tango.update
PUBLISH_TARGETS += tango.publish
ECHO_TARGETS    += tango.echo
tango:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/                >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make  >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make && make install
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make recursive && make install
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.clean:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make clean
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.prepare:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make prepare
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.install:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make install
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.uninstall:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make uninstall
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.publish:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make publish
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.update:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make update
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
tango.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/               >> /volumes/llama/home/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/.make >> /volumes/llama/home/alpine/applications/tango/.make/super
	cd /volumes/llama/home/alpine/applications/tango/ && make echo
	-rm /volumes/llama/home/alpine/applications/tango/.make/super
