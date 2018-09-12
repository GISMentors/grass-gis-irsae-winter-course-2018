
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

`IRSAE <http://www.irsae.no>`__ members `NINA <http://www.nina.no>`__ 
and `FEM <https://www.fmach.it/>`__ offer a **3-days intense workshop on 
GIS in Applied Ecology from 24.09.2018 to 27.09.2018** at the cosy 
`Studenterhytta <http://www.studenterhytta.no>`__ in **Oslo**. 
With full board provided and no other distraction than beautiful nature around, 
participants can fully focus on learning new techniques, applying them to their ongoing 
projects and networking with the others.

Topic of the course will be **Advanced Geospatial Analysis with an emphasis on handling 
of Earth Observation and Time Series data** using Free and Open Source Software.  
Based on a set of 28 course units (see below), final content for the 3 days event will be 
tailored according to participants interest as well as prior knowledge and experience 
(it would take ~5 days to cover all course units).

The course is kindly supported by `IRSAE <http://www.irsae.no>`__. Thus, IRSAE 
students and staff will get a reduced course fee as well as **priority access 
until 31.08.2018**. 


Course fees - that cover full board (3 nights at Studenterhytta with lunch to lunch food) - are

* 3900 NOK (~ 410 €) for participants from IRSAE institutions
* 4900 NOK (~ 515 €) for participants from non-IRSAE institution.


**Please register** `here <https://goo.gl/forms/yUyIEbUUoab4B04l1>`__.


Participants are exected to bring their own device / laptop, so the course can have as 
much as possible take home effect. An OSGeo-Live USB medium will be handed out with all 
relevant software and sample data installed.

IRSAE cannot give **ECTS** directly. Following earlier praxis in IRSAE courses, participants will be 
provided with a certificate upon completition of the course, stating that the course is worth 1 ECTS 
credit (as 1 ECTS should roughly correspond to 20 to 25 hours of student's time). It is then up to the 
University where the students are affiliated to validate the credits (or not).

For questions regarding registration and organisation please contact:
`Stefan Blumentrath <https://www.nina.no/Kontakt/Ansatte/Ansattinformasjon.aspx?AnsattID=14230>`__


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
hidden from the users. See :wikipedia-en:`Free and open-source
software` article on Wikipedia for more information.

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
<https://www.openstreetmap.org/node/879127732>`__. All data layers are
projected in ETRS89 / UTM zone 33N (:epsg:`25833`). See detailed
description below.

* administrative borders (:file:`Basisdata_0000_Norge_25833_Fylker_GML.gml`, source: `GeoNorge <https://kartkatalog.geonorge.no/metadata/kartverket/administrative-enheter-fylker/6093c8a8-fa80-11e6-bc64-92361f002671>`__)
* Digital Elevation Model (source: `GeoNorge <https://kartkatalog.geonorge.no/metadata/kartverket/dtm-10-terrengmodell-utm33/dddbb667-1303-4ac5-8640-7ec04c0e3918>`__)
 * :file:`Basisdata_6602-1_Celle_25833_DTM10UTM33_TIFF.zip`
 * :file:`Basisdata_6602-2_Celle_25833_DTM10UTM33_TIFF.zip`
 * :file:`Basisdata_6602-3_Celle_25833_DTM10UTM33_TIFF.zip`
 * :file:`Basisdata_6602-4_Celle_25833_DTM10UTM33_TIFF.zip`
 * :file:`Basisdata_6702-2_Celle_25833_DTM10UTM33_TIFF.zip`
 * :file:`Basisdata_6702-3_Celle_25833_DTM10UTM33_TIFF.zip`
* Sentinel-2 sample bands (:file:`sentinel/sample`, source: Copernicus Open Access Hub)
  
Units
=====

.. important:: Teaser. Check out first few units online. Rest of units will be
   published online later.
   
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

* Unit 11 - Scripting
* Unit 12 - Script tuning
* Unit 13 - PyGRASS intro
* Unit 14 - PyGRASS scripting
* Unit 15 - Reprojection
* Unit 16 - Spatio-temporal intro
* Unit 17 - Lidar
* Unit 18 - Lidar scripting
* Unit 19 - Sentinel downloader
* Unit 20 - Sentinel Spatio-temporal
* Unit 21 - Spatio-temporal scripting
* Unit 22 - Spatio-temporal script tuning
* Unit 23 - GRASS and R
* Unit 24 - Regression analysis
* Unit 25 - Classification
* Unit 26 - MODIS
* Unit 27 - MODIS Spatio-temporal
* Unit 28 - MODIS Spatio-temporal scripting

..
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
   
Lecturers
=========

* `Luca Delucchi <https://www.fmach.it/eng/CRI/general-info/organisation/Chief-scientific-office/Biodiversity-molecular-ecology/Applied-ecology/LUCA-DELUCCHI>`__, 
  Fondazione Edmung Mach (FEM) in San Michele all'Adige, Italy
* `Martin Landa <http://geo.fsv.cvut.cz/gwiki/Landa>`__, GeoForAll
  Lab, Czech Technical University in Prague, Czech Republic

Materials proudly provided by `GISMentors
<http://www.gismentors.eu>`__ training and mentoring group.

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
