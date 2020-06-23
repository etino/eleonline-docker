#!/bin/bash
[ ! -d "./eleonline" ] && mkdir eleonline
wget -O eleonline_latest.zip --show-progress http://trac.eleonline.it/eleonline/browser/trunk?format=zip 
unzip -qq eleonline_latest.zip -d tmp/
rm -rf eleonline/*
mv tmp/trunk/* eleonline
rm -rf tmp