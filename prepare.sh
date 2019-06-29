#!/bin/bash

# exit on errors
set -e

mkdir compile
cd compile
git clone https://github.com/rncbc/synthv1.git
cd synthv1/
git checkout synthv1_0_9_8
cd ..
git clone https://github.com/rncbc/padthv1.git
cd padthv1/
git checkout padthv1_0_9_8
cd ..

cp ../build.sh .
