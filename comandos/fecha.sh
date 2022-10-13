#!/bin/bash
# Constants to get time
MILIS_TO_SECONDS=1000
SECONDS_PER_MINUTE=60
MINUTES_PER_HOUR=60
HOURS_PER_DAY=24
TIME_HOUR=3600

# Constants to get date
INITIAL_YEAR=1970
DAYS_PER_YEAR=365

DAYS_PER_MONTH=30
DAYS_MONTHS=(31 28 31 30 31 30 31 31 30 31 30 31)
MONTHS=("Enero" "Febrero" "Marzo" "Abril" "Mayo" "Junio" "Julio" "Agosto" "Septiembre" "Octubre" "Noviembre" "Diciembre")

# Getting console entry
uso='UTF-5'
dif=-5
if [ ! -z $1 ] 
then
    uso=$1
    dif=$(echo "$1" | cut -c4-6)
    if [[ $dif -lt -12 ]] || [[ $dif -gt 12 ]]
    then
        echo "No existe el uso horario ingresado."
        exit
    fi
fi

# Getting time
seconds=$(($(date +%s)+$TIME_HOUR*$dif))

hours=$(($seconds/$SECONDS_PER_MINUTE/$MINUTES_PER_HOUR))
seconds=$(($seconds-$hours*$SECONDS_PER_MINUTE*$MINUTES_PER_HOUR))

minutes=$(($seconds/$SECONDS_PER_MINUTE))
seconds=$(($seconds-$minutes*$SECONDS_PER_MINUTE))

days=$(($hours/$HOURS_PER_DAY))
hours=$(($hours-$days*$HOURS_PER_DAY))

# Getting date
yearDifference=$(($days/$DAYS_PER_YEAR))
year=$(($yearDifference+$INITIAL_YEAR))
days=$(($days-$yearDifference*$DAYS_PER_YEAR-12))
month=$(($days/$DAYS_PER_MONTH))

i=0
while [ $i -lt $month ]
do
    days=$(($days-${DAYS_MONTHS[$i]}))
    i=$(($i+1))
done

time="$( printf "%02d:%02d:%02d" $hours $minutes $seconds)"
echo -e "Uso horario: \t$uso\nFecha: \t\t$days de ${MONTHS[$month]} del $year\nHora: \t\t$time"