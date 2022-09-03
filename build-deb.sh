#!/bin/bash -e

sudo apt-get -y install qtbase5-dev qtbase5-dev-tools qttools5-dev-tools \
 dpkg-dev debhelper devscripts equivs pkg-config

rm -rf hamfax-qt5
git clone https://github.com/sergioisidoro/hamfax-qt5
cp -r debian hamfax-qt5

cd hamfax-qt5
dpkg-buildpackage -b -d -uc -us -j4


