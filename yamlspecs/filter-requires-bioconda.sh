#!/bin/bash
#
# remove erroneous requirements with hard-coded paths.
# yes, each new conda'update' adds a few more lines.


/usr/lib/rpm/find-requires $* | sed  \
    -e '/\/opt\/anaconda1anaconda2anaconda3/d' \
    -e '/\/home\/conda/d' \
    -e '/\/usr\/local\/bin\/python/d' \
    -e '/libcblas.so/d' \
    -e '/import/d' \
    -e '/^"/d' \
    -e '/^#/d' \
    -e '/perl(VMS::Filespec)/d' -e '/perl(unicore::Name)/d' \
    -e '/perl(Foundation)/d' -e '/perl(Mac::BuildTools)/d' \
    -e '/package/d' -e '/perl(Mac::InternetConfig)/d' \
    -e '/perl(VMS::Stdio)/d' -e '/libcrypto.so.1.0.0()(64bit)/d'

