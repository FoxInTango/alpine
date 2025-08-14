PUBLISH_TARGETS += libarguments.publish
UPDATE_TARGETS  += libarguments.update
libarguments:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make
libarguments.clean:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make clean
libarguments.prepare:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make prepare
libarguments.install:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make install
libarguments.uninstall:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make uninstall
libarguments.publish:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make publish
libarguments.update:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make update
libarguments.echo:
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/ && make echo
