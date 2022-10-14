#!/bin/bash

commands=("help" "search" "infosys" "datetime" "credits" "game" "mp3" "clear" "exit")

function execute(){
    params=()
    for i in $@
    do
        if [[ " ${commands[*]} " =~ " $i " ]]
        then 
            command=$i
        else
            params+=($i)
        fi
    done
    case $command in
        ${commands[0]})
            ./help.sh ${params[@]}
        ;;
        ${commands[1]})
            ./comandos/search.sh ${params[@]}
        ;;
        ${commands[2]})
            ./comandos/os.sh ${params[@]}
        ;;
        ${commands[3]})
            ./comandos/fecha.sh ${params[@]}
        ;;
        ${commands[4]})
            ./comandos/credits.sh ${params[@]}
        ;;
        ${commands[5]})
            ./Juego/gato.sh ${params[@]}
        ;;
        ${commands[6]})
            ./comandos/mp3.sh ${params[@]}
        ;;
        ${commands[7]})
            clear
        ;;
        ${commands[8]})
            exit
        ;;
    esac
}

clear
while [ true ]
do
    terminalEntry="\e[0;1;36m[$(pwd)] > \e[0;0;37m"
    echo -n -e "$terminalEntry"
    read command

    words=($command)
    if [ ${#words[@]} != 0 ]
    then 
        if [[ " ${commands[*]} " =~ " ${words[0]} " ]]
        then
            execute "$(echo ${words[@]})"
        else
            echo "El comando que ingresaste no existe en la lista de comandos, para mas informacion escribe help -l."
        fi
    fi
done