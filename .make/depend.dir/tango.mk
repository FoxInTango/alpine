DEPEND_TARGETS  += tango.recursive
UPDATE_TARGETS  += tango.update
PUBLISH_TARGETS += tango.publish
ECHO_TARGETS    += tango.echo
tango:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make && make install
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make recursive && make install
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make clean
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make prepare
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make install
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make uninstall
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make publish
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make update
	-rm /home/lidali/alpine/applications/tango/.make/super
tango.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/tango/.make/super
	cd /home/lidali/alpine/applications/tango/ && make echo
	-rm /home/lidali/alpine/applications/tango/.make/super
