#!/bin/bash

commands=("help" "search" "infosys" "datetime" "credits" "game" "mp3")
commandInfo=(
    "---- HELP ----\n> Este comando te brinda informacion sobre los comandos dentro del programa.\n\thelp [command]\nINFO:\n\tcommand: Nombre del comando a usar.\n\t\thelp [-flag]\nFLAGS:\n\t-l: Lista los comandos existentes.\n\t-a: Muestra los comandos con sus definiciones.\n"
    "---- SEARCH ----\n> Permite buscar un archivo en un directorio especifico.\n\tsearch [path] [fileName] [-flag]\nINFO:\n\tpath: Ruta especificada.\n\tfileName: Nombre del archivo, nombre incompleto o extension del archivo a buscar.\nFLAGS:\n\t-r: Busca de forma recursiva dentro de las carpetas del directorio indicado.\n"
    "---- INFOSYS ----\n> Muestra la informacion basica del sistema operativo, Memoria RAM, version del sistema y arquitectura.\n\t os\n"
    "---- DATETIME ----\n> Indica el uso horario, fecha y hora actual.\n\tdatetime\n\tdatetime [use]\nINFO:\n\tuse: Especifica el uso horario que se desee obtener entre UTF-12 hasta UTF+12, si no se indica, muestra la hora actual en tu uso horario.\n"
    "---- CREDITS ----\n> Muestra los nombres y creditos de los creadores. \n\tcredits\n\tcredits [developer] [-flag]\nINFO:\n\tdeveloper: Nombre del desarrollador\nFLAGS:\n\t-e: Indica de forma extendida el desarrollo que realizo el creador.\n\t-a: Muestra informacion sobre la experiencia del desarrollo.\n"
    "---- GAME ----\n> Abre un juego de gato (3 en ralla) dentro de la terminal.\n\tgame\n"
    "---- MP3 ----\n> Inicia un programa para poder reproducir musica.\n\tmp3\n"
)

command=$1
if [ $# == 0 ] || [ "$command" == "${commands[0]}" ]
then
    echo -e "${commandInfo[0]}"
    exit
fi

if [ ! -z "$(echo $command | grep '^-')" ]
then
    if [ "$command" == "-a" ]
    then
        for cmdInfo in "${commandInfo[@]}"
        do
            echo -e $cmdInfo
        done
    elif [ "$command" == "-l" ]
    then
        echo "---- COMANDOS ----"
        for cmd in "${commands[@]}"
        do
            echo -e " $cmd"
        done
    fi
else
    for i in "${!commands[@]}"
    do
        if [[ "${commands[$i]}" == "$command" ]]
        then
            echo -e ${commandInfo[$i]}
        fi
    done
fi