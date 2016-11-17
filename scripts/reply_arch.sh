#!/bin/bash

for i in $(seq 1 $1);
do
    cat 20130131.txt >> arc1.txt
done

for i in $(seq 1 $2);
do
    cat 20130131.txt >> arc2.txt
done

for i in $(seq 1 $3);
do
    cat 20130131.txt >> arc3.txt
done
