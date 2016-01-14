#!/bin/bash
if [ ! -f hithere-1.0.tar.gz  ] ; then
wget http://code.liw.fi/hithere/hithere-1.0.tar.gz
fi
cp hithere-1.0.tar.gz hithere_1.0.orig.tar.gz
tar xf  hithere_1.0.orig.tar.gz
cd hithere-1.0
if [ ! -e debian ] ; then
mkdir debian
fi

dch --create -v 1.0-1 --package hithere

echo 9 >debian/compat

