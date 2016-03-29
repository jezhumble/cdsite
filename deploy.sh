#!/bin/bash
STAMP=$(date +%Y%m%d%I%M%S)
echo $STAMP
tar -cjf site.tar.bz2 _site
scp site.tar.bz2 $1@continuousdelivery.com:/var/www/staging
ssh $1@continuousdelivery.com << EOF
cd /var/www/staging
mkdir $STAMP
tar -xf site.tar.bz2 -C$STAMP --strip-components 1
rm current
ln -s $STAMP current
rm site.tar.bz2
EOF
rm site.tar.bz2
