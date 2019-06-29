#!/bin/bash

# exit on errors
set -e

cd /compile/
cd padthv1/
rm -f configure
./autogen.sh 
sed -i "s,PACKAGE_NAME='padthv1',PACKAGE_NAME='padthv1-s01',g" configure
./configure --prefix=/opt/padthv1-s01
make
make install
rm -f configure
./autogen.sh 
sed -i "s,PACKAGE_NAME='padthv1',PACKAGE_NAME='padthv1-s02',g" configure
./configure --prefix=/opt/padthv1-s02
make
make install
cd ..
cd synthv1/
rm -f configure
./autogen.sh 
sed -i "s,PACKAGE_NAME='synthv1',PACKAGE_NAME='synthv1-s01',g" configure
./configure --prefix=/opt/synthv1-s01
make
make install
rm -f configure
./autogen.sh 
sed -i "s,PACKAGE_NAME='synthv1',PACKAGE_NAME='synthv1-s02',g" configure
./configure --prefix=/opt/synthv1-s02
make
make install
cd ..
tar czf padthv1-synthv1-`uname -m`.tar.gz /opt/padthv1-s* /opt/synthv1-s*
