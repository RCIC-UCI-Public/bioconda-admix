#!/bin/bash
#
# remove erroneous requirements
# with hard-coded paths.

/usr/lib/rpm/find-requires $* | sed  \
    -e '/\/opt\/anaconda1anaconda2anaconda3/d' \
    -e '/\/usr\/local\/bin\/python/d' \
    -e '/libcblas.so/d' \
    -e '/import/d' \
    -e '/^#/d'

#   -e '/libcom_err.so.3/d' \
#   -e '/libkdb5.so.9/d' \
#   -e '/libverto.so.0/d' \
#   -e '/from/d' \
#   -e '/import/d' \
#   -e '/def/d' \
#   -e '/^#/d'
