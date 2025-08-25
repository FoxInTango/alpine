DEPEND_TARGETS  += tango.build
UPDATE_TARGETS  += tango.update
PUBLISH_TARGETS += tango.publish
ECHO_TARGETS    += tango.echo
tango:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.build:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
tango.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/tango/.make/super
