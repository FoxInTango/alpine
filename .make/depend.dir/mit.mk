DEPEND_TARGETS  += mit.recursive
UPDATE_TARGETS  += mit.update
PUBLISH_TARGETS += mit.publish
ECHO_TARGETS    += mit.echo
mit:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.recursive:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make recursive && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.clean:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make clean
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.prepare:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make prepare
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.install:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.uninstall:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make uninstall
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.publish:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make publish
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.update:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make update
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
mit.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/          >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/applications/mit/.make/super
