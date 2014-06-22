#!/bin/bash
 
# REPLACE ALL THE "gmpy" OF THIS FILE WITH THE MODULE NAME
# THEN REMOVE THIS ERROR AND EXIT
 
# version of your package
VERSION_gmpy=${VERSION_gmpy:-1.17}
 
# dependencies of this recipe
DEPS_gmpy=(kivy openssl)
 
# url of the package
#URL_gmpy=http://ios-dev.no-ip.org/gmpy-$VERSION_gmpy.tar.gz
URL_gmpy=https://pypi.python.org/packages/source/g/gmpy/gmpy-$VERSION_gmpy.zip
 
# md5 of the package
MD5_gmpy=
 
# default build path
BUILD_gmpy=$BUILD_PATH/gmpy/$(get_directory $URL_gmpy)
 
# default recipe path
RECIPE_gmpy=$RECIPES_PATH/gmpy
 
# function called for preparing source code if needed
# (you can apply patch etc here.)
function prebuild_gmpy() {
	true
}
 
# function called to build the source code
function build_gmpy() {
	# Copy the prebuilt libtorrent.so to the python's packages, so it can be imported
	try cp $RECIPE_gmpy/gmpy.so $BUILD_PATH/python-install/lib/python2.7/site-packages/gmpy.so
}
 
# function called after all the compile have been done
function postbuild_gmpy() {
	true
}
