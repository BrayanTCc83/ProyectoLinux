#!/bin/bash
tmpFile="file.txt"
fResult="result.txt"
path="$1"
fname=$2
flag=$3

function split(){
    echo $9
}

function searchFile {
    directory=$1
    ls -l $directory > $tmpFile
    files=()
    directories=()

    while read line; do
        file=$(echo $line | grep '^-')
        if [ ! -z "$file" ] 
        then
            name=$(split $line)
            result=$(echo $name | grep $fname)
            if [ ! -z "$result" ] 
            then
                echo "$directory $result" >> $fResult
            fi
        elif [[ ! -z $(echo $line | grep '^d') ]] && [ "$flag" == "-r" ]
        then
            directories+=("$directory/$(echo $line | cut -c46-)")
        fi
    done < $tmpFile

    for dir in ${directories[@]}
    do
        searchFile $dir $fname $flag
    done
}

searchFile $path $fname $flag
cat $fResult

rm $tmpFile
rm $fResult