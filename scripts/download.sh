#!/bin/sh

WORKING_DIR=$(cd $(dirname $0); pwd)
DOWNLOAD_DIR="$(cd $WORKING_DIR/..;pwd)/src"
echo $DOWNLOAD_DIR

./setenv.sh

if [ -d $DOWNLOAD_DIR ]; then
  rm -rf $DOWNLOAD_DIR
fi

mkdir $DOWNLOAD_DIR && cd $DOWNLOAD_DIR

