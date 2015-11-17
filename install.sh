#!/bin/sh

# install.sh v1.0.3 11Nov2015

# Linux or bust!
osName=`uname`
if [ "$osName" != 'Linux' ]; then
        echo "Sorry, this script only works on Linux."
        exit
fi

# Only for the big kids
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root/sudo." 
   exit 1
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

$binPath -V

echo "Installation complete.\n"

