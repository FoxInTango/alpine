DEPEND_TARGETS  += libcl.recursive
UPDATE_TARGETS  += libcl.update
PUBLISH_TARGETS += libcl.publish
ECHO_TARGETS    += libcl.echo
libcl:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make && make install
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make clean
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make prepare
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make install
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make uninstall
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make publish
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make update
	-rm /home/lidali/alpine/libraries/libcl/.make/super
libcl.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/libcl/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/libcl/.make/super
	cd /home/lidali/alpine/libraries/libcl/ && make echo
	-rm /home/lidali/alpine/libraries/libcl/.make/super
