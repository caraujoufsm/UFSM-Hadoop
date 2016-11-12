#!/bin/bash

cd
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz
tar -zxvf hadoop-2.7.3.tar.gz
mv hadoop-2.7.3 hadoop

cp ozone_proj/scripts/bash/.bashrc ~/
cp ozone_proj/scripts/sh-archives/hadoop-env.sh ~/hadoop/etc/hadoop/
cp ozone_proj/scripts/xml-archives/*.xml ~/hadoop/etc/hadoop/

source .bashrc
