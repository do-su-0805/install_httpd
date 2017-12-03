#!/bin/sh

WORKING_DIR=$(cd $(dirname $0); pwd)
echo $WORKING_DIR

cd $WORKING_DIR/scripts
./download.sh

./pre_build.sh

./install.sh
