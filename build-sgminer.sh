#!/bin/sh
cd ~
git clone -b v5_0 https://github.com/sgminer-dev/sgminer.git /sgminer-5.0
cd sgminer-5.0
autoreconf -i
sleep 2
CFLAGS="-O2 -Wall -march=native" ./configure
sleep 5
make install
sleep 5
cp ~/sudbury-setup ~/

