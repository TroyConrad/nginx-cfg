#!/bin/sh

# install.sh v1.0.0 21Oct2015 (Great Scott!)

# Linux or bust!
osName=`uname`
if [[ "$osName" != 'Linux' ]]; then
	echo "Sorry, this script only works on Linux."
	exit
fi

scriptName='nginx-cfg'
installPath='/opt/$scriptname'
binPath='/usr/local/bin/$scriptname'

echo "Installing $scriptname..."

mkdir -p $installPath
rm -rf $installPath/*
cp -r * $installPath
ln -fs $installPath/$scriptname $binPath
chmod ugo+rx $binPath
