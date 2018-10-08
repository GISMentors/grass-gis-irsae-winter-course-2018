
.. |nina_logo| image:: ./images/NINA_logo_sort_txt_engelsk_under.png
   :height: 92px
   :width: 148px
.. |fem_logo| image:: ./images/NINA_logo_sort_txt_engelsk_under.png
   :height: 92px
   :width: 259px
.. |irsae_logo| image:: ./images/IRSAE.jpg
   :height: 92px
   :width: 546px

|irsae_logo| |nina_logo|


Time, place, fee and registration
=================================

This **3-days intense workshop on GIS in Applied Ecology from
24.09.2018 to 27.09.2018** at the cosy `Studenterhytta
<http://www.studenterhytta.no>`__ in **Oslo** has been offered by
`IRSAE <http://www.irsae.no>`__ members `NINA <http://www.nina.no>`__
and `FEM <https://www.fmach.it/>`__. With full board provided and no
other distraction than beautiful nature around, participants could
fully focus on learning new techniques, applying them to their ongoing
projects and networking with the others.

Topic of the course is **Advanced Geospatial Analysis with an emphasis
on handling of Earth Observation and Time Series data** using Free and
Open Source Software.  Based on a set of 29 course units (see
:ref:`below <units>`), final content for the 3 days event was tailored
according to participants interest as well as prior knowledge and
experience (it would take ~5 days to cover all course units).

The course is kindly supported by `IRSAE <http://www.irsae.no>`__. 

See :doc:`gallery` for more photos.

Free and Open Source Software (FOSS)
====================================

.. figure:: ./images/foss.png
   :class: small
        
   FOSS software overview (`source
   <https://www.linkedin.com/pulse/open-source-software-development-neha-sharma>`__).

Free and open-source software (FOSS) is a computer software that can be
classified as both **free software** and **open-source
software**. That is, anyone is freely licensed to

* use,
* copy,
* study, and
* change

the software in any way. The source code is openly shared so that
people are encouraged to voluntarily improve the design of the
software. This is in contrast to **proprietary software**, where the
software is under restrictive copyright and the source code is usually
hidden from the users. See :wikipedia:`Free and open-source software`
article on Wikipedia for more information.

FOSS for Geospatial
-------------------

In 2006 was founded `OSGeo Foundation <http://www.osgeo.org>`__ to
support the collaborative development of open source geospatial
software, and promote its widespread use.

.. figure:: ./images/osgeo-logo.png
   :class: small
   
   OSGeo logo (`source <https://www.osgeo.org/about/branding-material/>`__)

The foundation has adopted principles to ensure that projects under
OSGeo umbrella will satisfy basic quality requirements, namely:

* Projects should manage themselves, striving for consensus and
  encouraging participation from all contributors - from beginning
  users to advanced developers.
* Contributors are the scarce resource and successful projects court
  and encourage them.
* Projects are encouraged to adopt open standards and collaborate with
  other OSGeo projects.
* Projects are responsible for reviewing and controlling their code
  bases to insure the integrity of the open source baselines.

This principles ensure that `OSGeo projects
<https://www.osgeo.org/projects/>`__ are well established, stable,
mature and sustainable.

Software
========

.. figure:: ./images/grass-gis-logo.png
   :class: small
          
* `GRASS GIS <http://grass.osgeo.org>`__ (recommended version 7.4) for
  geospatial raster, imagery, and vector data processing and providing
  spatial analysis.
* `QGIS desktop <http://qgis.org>`__ (recommended version 2.18) for
  geospatial visualization, creating hardcopy outputs, and data
  publishing.
* `GDAL library <http://gdal.org>`__ for reading and writing various
  geospatial data.
* `R statistical language <https://cran.r-project.org/>`__ for
  statistical analysis.
* `sentinelsat library <https://pypi.python.org/pypi/sentinelsat>`__
  utility to search and download Copernicus Sentinel satellite images.
* `pyModis <http://www.pymodis.org/>`__ Python based library to work
  with MODIS data.

Dataset
=======

For purpose of this training materials a sample dataset has been
created based on Open Data covering `Studenterhytta venue region
<https://www.openstreetmap.org/node/879127732>`__. See detailed
description below.

* administrative borders (directory: :file:`counties`, source: `GeoNorge
  <https://kartkatalog.geonorge.no/metadata/kartverket/administrative-enheter-fylker/6093c8a8-fa80-11e6-bc64-92361f002671>`__)
* EU-DEM (directory: :file:`eu-dem`, source: `Copernicus Land Monitoring
  Service - EU-DEM
  <https://www.eea.europa.eu/data-and-maps/data/copernicus-land-monitoring-service-eu-dem>`__)
* Digital Terrain Model (directory: :file:`lidar/dmt`, source: `GeoNorge
  <https://kartkatalog.geonorge.no/metadata/kartverket/dtm-10-terrengmodell-utm33/dddbb667-1303-4ac5-8640-7ec04c0e3918>`__)
* Lidar LAZ data (directory: :file:`lidar/laz`, source: `GeoNorge
  <https://kartkatalog.geonorge.no/metadata/kartverket/hoydedata-hidra-2012/3b69a983-f3e9-4946-be3a-ceaf8d2766da>`__)
* MODIS Land Surface Temperature eight day 1 Km (directory:
  :file:`modis`, source: `LP DAAC
  <https://lpdaac.usgs.gov/dataset_discovery/modis/modis_products_table>`__)
* Sentinel-2 data (directory: :file:`sentinel`, source: `Copernicus
  Open Access Hub <https://scihub.copernicus.eu/>`__)

Download sample dataset as `7z archive
<http://geo102.fsv.cvut.cz/geoforall/grass-gis-irsae-winter-course-2018/grass-gis-irsae-winter-course-2018-data.7z>`__ (3.4GB, 3.8GB uncompressed).

.. _virtual-machine:

Virtual machine
===============

The simplest way how to follow this training. `VirtualBox
<http://virtualbox.org>`__ must be installed on your PC, enable also
*virtualization support* in BIOS. See `Virtualization Quickstart
<https://live.osgeo.org/en/quickstart/virtualization_quickstart.html>`__
for details.

..
   A customized virtual machine (VM) based on `OSGeoLive
   <http://live.osgeo.org>`__ is available at ... This VM contains all
   software dependecies including sample dataset in :file:`geodata`
   directory.

   Download tailored virtual machine **including sample dataset** as `7z
   archive
   <http://geo102.fsv.cvut.cz/geoforall/grass-gis-irsae-winter-course-2018/osgeolive-12.0-vm-irsae.7z>`__
   (18.6GB, 27GB uncompressed).

.. _units:

Units
=====

.. toctree::
   :maxdepth: 2

   units/01
   units/02
   units/03
   units/04
   units/05
   units/06
   units/07
   units/08
   units/09
   units/10
   units/11
   units/12
   units/13
   units/14
   units/15
   units/16
   units/17
   units/18
   units/19
   units/20
   units/21
   units/22
   units/23
   units/24
   units/25
   units/26
   units/27
   units/28
   units/29

Lecturers
=========

* `Luca Delucchi <https://www.fmach.it/eng/CRI/general-info/organisation/Chief-scientific-office/Biodiversity-molecular-ecology/Applied-ecology/LUCA-DELUCCHI>`__, 
  Fondazione Edmung Mach (FEM) in San Michele all'Adige, Italy
* `Martin Landa <http://geo.fsv.cvut.cz/gwiki/Landa>`__, GeoForAll
  Lab, Czech Technical University in Prague, Czech Republic

Materials proudly provided by `GISMentors
<http://www.gismentors.eu>`__ training and mentoring group.

.. toctree::
   :maxdepth: 2

   gallery

License
=======

`Creative Commons Attribution-ShareAlike 4.0 International License <http://creativecommons.org/licenses/by-sa/4.0/>`_.

.. figure:: ./images/cc-by-sa.png 
   :width: 130px
   :scale-latex: 120

Source code available on `GitHub
<https://github.com/GISMentors/grass-gis-irsae-winter-course-2018>`__. Feel
free to open `issues
<https://github.com/GISMentors/grass-gis-irsae-winter-course-2018/issues>`__
or `pull requests
<https://github.com/GISMentors/grass-gis-irsae-winter-course-2018/pulls>`__
to improve the materials :-)

*Document version:* |release| (built |today|)
