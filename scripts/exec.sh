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

echo hadoop fs -copyFromLocal "$path_ori" /

#j=0
#while [ $j -lt $4 ];
#do
    hadoop jar "$path_jarOri" $3 /"${path_array[$count]}" /tmpResult $5 $6 $7 $8 $4
    hadoop fs -cat /tmpResult/part-r-00000
    hadoop fs -rm -r -f /tmpResult
#    let j=j+1
#done
