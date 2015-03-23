#!/bin/sh

# http://www.gnu.org/savannah-checkouts/gnu/automake/manual/html_node/aclocal-Options.html#aclocal-Options
# Use a autogen script to 
# Line 1 :use aclocal to install macros, add m4 dir
# Line 2 :Run Autoconf
# Line 3 :Run automake and tell make to copy no symlink
# Line 4 :Run cofigure

# This below script did not work from one of the sources
# Still trying to figure out why
#aclocal --install -I m4 && \
#  autoconf && \
#  automake --add-missing --copy && \
#  ./configure "$@"

aclocal && \
autoconf && \
touch AUTHORS NEWS README ChangeLog && \
automake --add-missing