#!/bin/sh

## checking for using this script

CURL=`which curl`
if [ $? -ne 0 ]; then
  "Error: Not found CURL. please install CURL"
  exit 1;
fi

WORKING_DIR=$(cd $(dirname $0); pwd)
echo $WORKING_DIR

cd $WORKING_DIR/scripts
./download.sh

./pre_build.sh

./install.sh
