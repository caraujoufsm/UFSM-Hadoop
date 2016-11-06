#/bin/bash
##############################################################
#                                                            
# Escrito por Iago Corrêa                                    
#                                                            
##############################################################

day="$(date +%d)"
month="$(date +%m)"
year="$(date +%Y)"
dmy="${year}${month}${day}"


while true; do
    echo "Dia: ${day}"
    url="ftp://toms.gsfc.nasa.gov/pub/omi/data/ozone/Y2016/L3_ozone_omi_${year}${month}${day}.txt"
    arq_name="L3_ozone_omi_${dmy}.txt"
    curl -k ${url} -o ${arq_name} --connect-timeout 5

    if [ -e ${arq_name} ]; then
        break
    else
        day=$(( day - 1))
        if [ ${day} == 0 ]; then
        	day=$(( 31 ))
        fi
        dmy="${year}${month}${day}"
    fi
done