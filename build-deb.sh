#!/bin/bash -e

sudo apt-get -y install qtbase5-dev qtbase5-dev-tools qttools5-dev-tools \
 dpkg-dev debhelper devscripts equivs pkg-config

git clone https://github.com/sergioisidoro/hamfax-qt5 .

dpkg-buildpackage -b -d -uc -us -j4


