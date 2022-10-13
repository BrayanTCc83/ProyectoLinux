#!/bin/bash
tmpFile="file.txt"
path="$1"
maxRec=10

function split(){
    echo $9
}

directory=$1
fname=$2
ls -l $directory > $tmpFile
files=()
directories=()
maxRec=$(($maxRec-1))
while read line; do
    file=$(echo $line | grep '^-')
    if [ ! -z "$file" ] 
    then
        name=$(split $line)
        result=$(echo $name | grep $fname)
        if [ ! -z "$result" ] 
        then
            echo "$path/$result"
        fi
    fi
done < $tmpFile
rm $tmpFile