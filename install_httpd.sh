#!/bin/sh

cat << EOF
################################
### install_httpd.sh started ###
################################
EOF

# checking for using this script

which curl > /dev/null
if [ $? -ne 0 ]; then
  "Error: Not found CURL. please install CURL"
  exit 1;
fi

which tar > /dev/null
if [ $? -ne 0 ]; then
  "Error: Not found tar. please install tar"
  exit 1;
fi

which gcc > /dev/null
if [ $? -ne 0 ]; then
  "Error: Not found gcc. please install gcc"
  exit 1;
fi

which g++ > /dev/null
if [ $? -ne 0 ]; then
  "Error: Not found g++. please install g++"
  exit 1;
fi

which make > /dev/null
if [ $? -ne 0 ]; then
  "Error: Not found make. please install make"
  exit 1;
fi

WORKING_DIR=$(cd $(dirname $0); pwd)
echo $WORKING_DIR

cd $WORKING_DIR/scripts
./download.sh

./build.sh

cat << EOF
#################################
### install_httpd.sh finished ###
#################################
EOF
