#!/bin/sh

WORKING_DIR=$(cd $(dirname $0); pwd)

./download.sh

./pre_build.sh

./install.sh
