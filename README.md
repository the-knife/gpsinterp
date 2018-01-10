
<!-- README.md is generated from README.Rmd. Please edit that file -->
gpsinterp
=========

gpsinterp is an R package designed to interpolate gps-exif-tags (longitude, latitude and directon), given a certain number of known points. The position of those exact points will be send using JOSM (Java editor for OpenstreetMap).

This will be parituclary useful for a sequence of photos (i.e. taken with small amount of time between each photo), typically a [mapillary](http://mapillary.com/app) sequence.

Installation
------------

You can install *gpsinterp* from github with :

``` r
# install.packages("devtools")
devtools::install_github("the-knife/gpsinterp")
```

Note : *on Windows*, you need to have [RTools](https://cran.r-project.org/bin/windows/Rtools) to make devtools working.

Other components to install
---------------------------

### *JOSM*

[JOSM](http://josm.openstreetmap.de) is an offline editor for OpenStreetMap. For this package, it is not used for uploading information to osm, but for manually locate exact points.

JOSM can display various aerial imagery and detect which points where moved by the user between two interpolations. *gpsinterp* will load local files in JOSM, therefore you have to enable the following options (in preferences menu) :

-   "Enable remote control"
-   "Open local files"

### *exiftool (optional)*

[exiftool](http://sno.phy.queensu.ca/~phil/exiftool/) is a command line for writing exif tags to photos. It only will be needed if you want to include computed information into image files.

Typical instructions sequence
-----------------------------

This is a basic example which shows you how to solve a common problem:

``` r
## initialize data
## compute position
## update in JOSM
```

Exporting result
----------------

### *csv*

### *write exif in images*