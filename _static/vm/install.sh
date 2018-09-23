#!/bin/bash

### Before running this script:
# mkdir ~/materials ; cd ~/materials
# git clone https://github.com/GISMentors/grass-gis-irsae-winter-course-2018.git
# grass-gis-irsae-winter-course-2018/_static/vm/install.sh

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
     mc \
     python-sphinx

if [ `lsb_release -rs` == '18.04' ] ; then
     sudo apt install -y libboost-iostreams1.65
else
     sudo apt install -y libboost-iostreams1.58
fi
sudo pip install pymodis sentinelsat pandas scikit-learn

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
DATA_DIR=~/geodata
if [ ! -d $DATA_DIR ] ; then
    wget http://geo102.fsv.cvut.cz/geoforall/grass-gis-irsae-winter-course-2018/grass-gis-irsae-winter-course-2018-data.7z -O /tmp/data.7z
    cd ~/
    7z x /tmp/data.7z
    rm /tmp/data.7z
fi

# materials
cd ~/materials
if [ ! -d sphinx-template ] ; then
    git clone https://github.com/GISMentors/sphinx-template.git
    (cd sphinx-template; git checkout en)
else
    (cd sphinx-template; git pull)
    (cd grass-gis-irsae-winter-course-2018; git pull)
fi
(cd grass-gis-irsae-winter-course-2018; make html)

if [ ! -d /var/www/html/grass-irsae ] ; then
    sudo ln -s ~/materials/grass-gis-irsae-winter-course-2018/_build/html /var/www/html/grass-irsae
fi

# set the workshop material as home page in firefox
# code from OSGeoLive project
# https://github.com/OSGeo/OSGeoLive/blob/master/bin/install_docs.sh

PREFS_FILE=`find "$HOME/.mozilla/firefox/" | grep -w default/prefs.js | head -n 1`
if [ -n "$PREFS_FILE" ] ; then
    sed -i -e 's+\(homepage", "\)[^"]*+\1http://localhost/grass-irsae+' \
    "$PREFS_FILE"
fi

exit 0
