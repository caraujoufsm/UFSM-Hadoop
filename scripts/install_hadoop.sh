#!/bin/bash

cd
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz
mv hadoop-2.7.1.tar.gz hadoop

cp ozone_proj/scripts/bash/.bashrc ~/
cp ozone_proj/scripts/sh/hadoop-env.sh /hadoop/etc/hadoop/
cp ozone_proj/scripts/xml/*.xml /hadoop/etc/hadoop/