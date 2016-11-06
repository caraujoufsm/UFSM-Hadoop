#!/bin/bash

cd
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz
mv hadoop-2.7.1.tar.gz hadoop

cat export HADOOP_HOME=/home/hadoop/hadoop >> .bashrc
cat export HADOOP_CLASSPATH=/usr/lib/jvm/java-8-oracle/lib/tools.jar >> .bashrc
cat export HADOOP_INSTALL=$HADOOP_HOME >> .bashrc
cat export HADOOP_MAPRED_HOME=$HADOOP_HOME >> .bashrc
cat export HADOOP_COMMON_HOME=$HADOOP_HOME >> .bashrc
cat export HADOOP_HDFS_HOME=$HADOOP_HOME >> .bashrc
cat export YARN_HOME=$HADOOP_HOME >> .bashrc
cat export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native >> .bashrc
cat export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin >> .bashrc
cat export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native" >> .bashrc
