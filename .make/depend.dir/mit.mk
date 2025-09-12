DEPEND_TARGETS  += mit.recursive
UPDATE_TARGETS  += mit.update
PUBLISH_TARGETS += mit.publish
ECHO_TARGETS    += mit.echo
mit:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/                >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make  >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make && make install
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make recursive && make install
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.clean:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make clean
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.prepare:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make prepare
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.install:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make install
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.uninstall:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make uninstall
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.publish:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make publish
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.update:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make update
	-rm /home/lidali/alpine/applications/mit/.make/super
mit.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/               >> /home/lidali/alpine/applications/mit/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/.make >> /home/lidali/alpine/applications/mit/.make/super
	cd /home/lidali/alpine/applications/mit/ && make echo
	-rm /home/lidali/alpine/applications/mit/.make/super
