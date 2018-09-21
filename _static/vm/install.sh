#!/bin/bash

sudo apt install -y proj-bin \
     python \
     python-numpy \
     python-pil \
     python-ply \
     geany \
     libboost-system-dev \
     libboost-thread-dev \
     libboost-filesystem-dev \
     libboost-program-options-dev \
     p7zip-full \
     mc

if [ `lsb_release -rs` == '18.04' ] ; then
     sudo apt install -y libboost-iostreams1.65
else
     sudo apt install -y libboost-iostreams1.58
fi
sudo pip install pymodis sentinelsat pandas

# laszip 2.0.1 is required by liblas
wget -c https://github.com/LASzip/LASzip/archive/2.0.1.tar.gz
tar xzf 2.0.1.tar.gz
cd LASzip-2.0.1/ && mkdir build && cd build
cmake -G "Unix Makefiles" ..
make
sudo make install
cd ../..
rm -rf 2.0.1.tar.gz LASzip-2.0.1

# liblas 1.8.1
wget http://download.osgeo.org/liblas/libLAS-1.8.1.tar.bz2
tar xvjf libLAS-1.8.1.tar.bz2
cd libLAS-1.8.1/ && mkdir build && cd build
cmake -G "Unix Makefiles" ../ -DWITH_LASZIP=YESmake
sudo make install
cd ../..
rm -rf libLAS-1.8.1.tar.bz2 libLAS-1.8.1

# GRASS 7.4.1
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
sudo apt update
sudo apt install -y grass grass-core grass-gui grass-doc grass-dev qgis

# GRASS Addons
SCRIPT=`realpath $0`
grass74 --exec `dirname $SCRIPT`/grass-addons.sh

# clean up
sudo apt autoremove

# data
wget http://geo102.fsv.cvut.cz/geoforall/grass-gis-irsae-winter-course-2018/grass-gis-irsae-winter-course-2018-data.7z -O /tmp/data.7z
cd ~/
7z e data.7z

exit 0
