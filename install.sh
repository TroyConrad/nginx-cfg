#!/bin/sh

# install.sh v1.0.1 21Oct2015 (Great Scott!)

# Linux or bust!
osName=`uname`
if [ "$osName" != 'Linux' ]; then
        echo "Sorry, this script only works on Linux."
        exit
fi

echo "Installing dependencies..."

apt-get install libtemplate-perl -y

scriptName="nginx-cfg"
installPath="/opt/$scriptName"
binPath="/usr/local/bin/$scriptName"

echo "Installing $scriptName..."

rm -rf $installPath
mkdir -p $installPath
cp -r * $installPath
ln -fs $installPath/$scriptName $binPath
chmod ugo+rx $binPath

echo "Installation complete.\n"

