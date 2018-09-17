#!/bin/bash

sudo apt install proj-bin \
     python \
     python-numpy \
     python-pil \
     python-ply \
     geany \
     libboost-system-dev \
     libboost-thread-dev \
     libboost-filesystem-dev \
     libboost-program-options-dev \
     libboost-iostreams1.65

sudo pip install pymodis sentinelsat pandas

# laszip 2.0.1 is required by liblas
wget -c https://github.com/LASzip/LASzip/archive/2.0.1.tar.gz
tar xzf 2.0.1.tar.gz
cd LASzip-2.0.1/ && mkdir build && cd build
cmake -G "Unix Makefiles" ..
make
sudo make install

# liblas 1.8.1
wget http://download.osgeo.org/liblas/libLAS-1.8.1.tar.bz2
tar xvjf libLAS-1.8.1.tar.bz2
cd libLAS-1.8.1/ && mkdir build && cd build
cmake -G "Unix Makefiles" ../ -DWITH_LASZIP=YESmake
sudo make install

# GRASS 7.4.1
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install grass qgis

# GRASS Addons
grass74 --exec ./grass-addons.sh

# clean up
sudo apt autoremove

exit 0
