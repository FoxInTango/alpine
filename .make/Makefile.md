prepare:prepare.libraries prepare.thirds prepare.applications prepare.modules prepare.templates
create.application
create.module.language
create.module.ast.module

LOCAL_SCM_HOST=allinone.io
PROJECT_LIBRARY_PATH=alpine
PROJECT_MOTULE_PATH=alpine
PROJECT_APPLICATION_PATH=alpine
PROJECT_TEMPLATE_PATH=alpine
PROJECT_LIBRARIES = lib2d.git  lib3d.git  libcl.git  libgl.git  libimage.git  libkms.git  libmath.git  libmedia.git  libml.git  libnn.git  libstt.git  libtts.git  libvk.git  libwl.git

make common : 
   解决循环依赖 特别是公共类型 头文件依赖
