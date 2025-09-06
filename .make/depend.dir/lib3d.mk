DEPEND_TARGETS  += lib3d.recursive
UPDATE_TARGETS  += lib3d.update
PUBLISH_TARGETS += lib3d.publish
ECHO_TARGETS    += lib3d.echo
lib3d:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make && make install
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make clean
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make prepare
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make install
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make uninstall
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make publish
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make update
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
lib3d.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/lib3d/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/lib3d/.make/super
	cd /home/lidali/alpine/libraries/lib3d/ && make echo
	-rm /home/lidali/alpine/libraries/lib3d/.make/super
