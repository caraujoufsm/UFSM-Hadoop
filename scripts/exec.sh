#!/bin/bash

IFS=$'/'
count=0
path_array=( $1 )
path_jar=( $2 )
path_ori=$( IFS=/ ; echo "${path_array[*]}" )
path_jarOri=$( IFS=/ ; echo "${path_jar[*]}" )

for i in "${path_array[@]}";
do
    count=$(( count + 1))
done;
count=$(( count - 1))

j=0
c=1
while [ $j -lt 4 ];
do
    hadoop fs -copyFromLocal "$path_ori" /
	hadoop jar "$path_jarOri" $3 /"${path_array[$count]}" /tmpResult $4 $5 $6 $7 $c >> $8 && hadoop fs -rm -r -f /tmpResult*
    c=$(( c * 10  ))
    let j=j+1
done