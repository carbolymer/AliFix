#!/bin/sh
if [ ! -d $ALIEN_DIR ]
then
	echo "Run first alice-env.sh !"
	exit
fi

export PATH=${ALIEN_DIR}/bin:$PATH
export LD_LIBRARY_PATH=${ALIEN_DIR}/lib:$LD_LIBRARY_PATH
export ZLIB=${ALIEN_DIR}

./configure \
--with-f77=gfortran \
--with-pythia6-uscore=SINGLE \
--enable-roofit \
--enable-minuit2 \
--with-ssl-shared=yes \
--with-ssl-incdir=${ALIEN_DIR}/include \
--with-ssl-libdir=${ALIEN_DIR}/lib \
--with-xml-incdir=${ALIEN_DIR}/include/libxml2 \
--with-xml-libdir=${ALIEN_DIR}/lib \
--with-alien-incdir=${ALIEN_DIR}/api/include \
--with-alien-libdir=${ALIEN_DIR}/api/lib \
--with-monalisa-libdir=${ALIEN_DIR}/api/lib \
--with-monalisa-incdir=${ALIEN_DIR}/api/include \
--with-xrootd-incdir=${ALIEN_DIR}/api/include/xrootd \
--with-xrootd-libdir=${ALIEN_DIR}/api/lib \
--enable-gsl-shared \
--disable-globus \
--build=debug

export LD_LIBRARY_PATH=${ALIEN_DIR}/lib:$LD_LIBRARY_PATH
