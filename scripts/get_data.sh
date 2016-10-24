#/bin/bash

##############################################################
#                                                            #
# Escrito por Iago Corrêa                                    #
#                                                            #
##############################################################

day="$(date +%d)"
month="$(date +%m)"
year="$(date +%Y)"

for i in $(seq 1 $day)
do
    dmy="${year}${month}${i}"
    url="ftp://toms.gsfc.nasa.gov/pub/omi/data/ozone/Y2016/L3_ozone_omi_${dmy}.txt"
    arq_name="L3_ozone_omi_${dmy}.txt"
    
    curl -k $url -o $arq_name

    echo $url
done;
