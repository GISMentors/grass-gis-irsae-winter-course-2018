#!/bin/bash

sudo apt install proj-bin \
     python \
     python-numpy \
     python-pil \
     python-ply \
     geany

sudo pip install pymodis sentinelsat pandas

# GRASS 7.4.1
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install grass qgis

# liblas
wget https://github.com/LASzip/LASzip/releases/download/v2.2.0/laszip-src-2.2.0.tar.gz
tar xvzf laszip-src-2.2.0.tar.gz
cd laszip-src-2.2.0/
./configure --prefix=/usr/local --includedir=/usr/local/include/laszip
make
sudo make install

wget http://download.osgeo.org/liblas/libLAS-1.8.1.tar.bz2
tar xvjf libLAS-1.8.1.tar.bz2
mkdir makefiles
cd makefiles
cmake -G "Unix Makefiles" ../ -DWITH_LASZIP=YES
make
sudo make install

exit 0
