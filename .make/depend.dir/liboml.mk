DEPEND_TARGETS  += liboml.recursive
UPDATE_TARGETS  += liboml.update
PUBLISH_TARGETS += liboml.publish
ECHO_TARGETS    += liboml.echo
liboml:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make && make install
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make clean
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make prepare
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make install
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make uninstall
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make publish
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make update
	-rm /home/lidali/alpine/libraries/liboml/.make/super
liboml.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/          >> /home/lidali/alpine/libraries/liboml/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/libraries/liboml/.make/super
	cd /home/lidali/alpine/libraries/liboml/ && make echo
	-rm /home/lidali/alpine/libraries/liboml/.make/super
