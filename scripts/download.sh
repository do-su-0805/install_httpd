#!/bin/sh

WORKING_DIR=$(cd $(dirname $0); pwd)
DOWNLOAD_DIR="$(cd $WORKING_DIR/..;pwd)/src"
echo $DOWNLOAD_DIR

. ./setenv.sh

if [ -d $DOWNLOAD_DIR ]; then
  rm -rf $DOWNLOAD_DIR
fi

mkdir $DOWNLOAD_DIR && cd $DOWNLOAD_DIR

# download scrpkgs

#curl -O "http://ftp.jaist.ac.jp/pub/apache/apr/apr-${APR_VERSION}.tar.gz"
echo "http://ftp.jaist.ac.jp/pub/apache/apr/apr-${APR_VERSION}.tar.gz"

#curl -O "http://ftp.jaist.ac.jp/pub/apache/apr/apr-util-${APRUTIL_VERSION}.tar.gz"
echo "http://ftp.jaist.ac.jp/pub/apache/apr/apr-util-${APRUTIL_VERSION}.tar.gz"

#curl -O "https://ftp.pcre.org/pub/pcre/pcre-${PCRE_VERSION}.tar.gz"
echo "https://ftp.pcre.org/pub/pcre/pcre-${PCRE_VERSION}.tar.gz"

#curl -O "http://ftp.jaist.ac.jp/pub/apache/httpd/httpd-${HTTPD_VERSION}.tar.gz"
echo "http://ftp.jaist.ac.jp/pub/apache/httpd/httpd-${HTTPD_VERSION}.tar.gz"
