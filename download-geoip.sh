#!/bin/sh

cd vendor/
rm -rf geolite2-country
rm -rf GeoLite2-Country_*
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.tar.gz
tar -xvf GeoLite2-Country.tar.gz
rm GeoLite2-Country.tar.gz

mkdir geolite2-country
mv GeoLite2-Country_*/* geolite2-country/
rm -rf GeoLite2-Country_*


