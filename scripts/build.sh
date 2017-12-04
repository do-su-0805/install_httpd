#!/bin/sh

. ./setenv.sh

WORKING_DIR=$(cd $(dirname $0); pwd)
DOWNLOAD_DIR="$(cd $WORKING_DIR/../;pwd)/src"
INSTALL_DIR="$(cd $WORKING_DIR/../../;pwd)/httpd-${HTTPD_VERSION}"

if [ -d $INSTALL_DIR ]; then
  rm -rf $INSTALL_DIR
fi
mkdir $INSTALL_DIR

# build apr
cd $DOWNLOAD_DIR
tar xzvf apr-${APR_VERSION}.tar.gz
cd apr-${APR_VERSION}
./configure --prefix=${INSTALL_DIR}/apr-${APR_VERSION} 
make && make install

# build apr-util
cd $DOWNLOAD_DIR
tar xzvf apr-util-${APRUTIL_VERSION}.tar.gz
cd apr-util-${APRUTIL_VERSION}
./configure --prefix=${INSTALL_DIR}/apr-util-${APRUTIL_VERSION} --with-apr=${INSTALL_DIR}/apr-${APR_VERSION}
make && make install

# build pcre
cd $DOWNLOAD_DIR
tar xzvf pcre-${PCRE_VERSION}.tar.gz
cd pcre-${PCRE_VERSION}
./configure --prefix=${INSTALL_DIR}/pcre-${PCRE_VERSION} 
make && make install

# build httpd
cd $DOWNLOAD_DIR
tar xzvf httpd-${HTTPD_VERSION}.tar.gz
cd httpd-${HTTPD_VERSION}
./configure --prefix=${INSTALL_DIR}/httpd-${HTTPD_VERSION} \
            --with-apr=${INSTALL_DIR}/apr-${APR_VERSION} \
            --with-apr-util=${INSTALL_DIR}/apr-util-${APRUTIL_VERSION} \
            --with-pcre=${INSTALL_DIR}/pcre-${PCRE_VERSION}/bin/pcre-config
make && make install