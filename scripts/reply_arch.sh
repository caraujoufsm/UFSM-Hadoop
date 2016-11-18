#!/bin/bash

cat $1 >> arc0.txt

for i in $(seq 1 $2);
do
    cat $1 >> arc1.txt
done

for i in $(seq 1 $3);
do
    cat $1 >> arc2.txt
done

for i in $(seq 1 $4);
do
    cat $1 >> arc3.txt
done
