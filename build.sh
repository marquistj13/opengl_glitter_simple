#!/bin/bash
#rm -rf build
DIR=`pwd`
mkdir Build
cd Build
cmake  ../
make -j6
cd $DIR
