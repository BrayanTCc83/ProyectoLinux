#!/bin/bash

developers=("Brayan" "Cano" "Take")
labor=("Creo los comandos de consola: datetime, os, search, help." "Se le descompuso la computadora." "Realizo los programas de gato y mp3.")
extended=(
    #Brayan
    "Para realizar la implementacion de los diferentes comandos lo que realice fue:\n
datetime: Obtener el tiempo en 
    segundos del sistema, a partir de este tiempo original tuve que definir los intervalos de tiempo que existe 
    dentro de cada unidad de tiempo, en un minuto hay 60 segundos, en una hora 60 minutos, en 1 dia 24 horas, mientras 
    que un mes varia de 28 a 31 dias segun sea el caso y en un ano hay 365 dias. Luego en base a eso obtuve los valores 
    que corresponden a cada tiempo, obteniendo facilmente la hora, la fecha vario un poco pues tuve que tener en cuenta 
    que el tiempo se inicia a partir del primero de enero de 1970, asi que esos eran mis datos de partida, luego 
    entonces debia obtener las diferencias con respecto a esos dias, surge con ello otro problema, el cambio de ano 
    biciesto, que tras hacer calculos resultaron ser 12 dias biciestos de ese ano al actual, asi que varian 12 dias del
    mes respecto al que deberia ser. Finalmente al revisar la hora me di cuenta que el uso horario variaba por lo que 
    tuve que implementar una opcion para indicar el uso horario con el que trabajar.\n
os: En este caso fue muy sencillo dentro del mismo sistema en /etc y en /proc se guardan archivos que indican datos 
    del sistema asi que solo fue necesario acceder a ellos y filtrar la informacion que requeria de los mismos.\n
search: Para este tuve que realizar un listado de los archivos que contenia el directorio de origen, luego lo guarde 
    en un archivo para poder extraer la linea completa y filtrar los directorios y los archivos, los archivos los 
    comparaba con la entrada del usuario mientras que los ficheros los mandaba llamar de forma recursiva pasandolos de 
    nuevo a la misma funcion, para no perder esa informacion lo que hice fue ir guardandolo en un archivo y luego una vez 
    acabado mostrar todos los resultados que coinciden al usuario en orden de path - archivo, finalmente se borran los 
    archivos temporales que emplee en la ejecucion.\n
help: fue muy sencillo de implementar, solo se requiere la entrada del comando a mostrar la informacion, estos los 
    guarde en arreglos para poder comparar y mostrar la informacion de forma rapida y con la misma instruccion."
    #Cano
    "Pues se le descompuso la compu, ya no inicia ni Windows ni linux bro, no se."
    #Emilio
    "Escribe aqui"
)
about=(
    #Brayan
    "
    Los programas que me tocaron hacer realmente creo que no fueron un gran problema, salvo el de busqueda, por 
    la parte recursiva, ya que se me fue un poco complicado poder guardar los datos recursivos, hasta que recurri 
    al uso de archivos, talvez me enrede mucho al momento de desarrollar el comando en si pues al inicio tenia una 
    idea que al implementarla no funciono como esperaba, asi que tuve que improvisar e intentar diferentes apartados 
    hasta que lo logre. 
    En lo correspondiente al programa de la fecha y hora fue simplemente hacer operaciones 
    aritmeticas para ir obteniendo las diferentes variaciones de tiempo, luego el extraer el dia actual en base a los 
    meses pues no tenia un punto de partida claro, luego de darme cuenta de que cada uno variaba y que habia un desfase 
    debido a los anos biciestos pude comprenderlo mejor.
    Por otra parte el programa del sistema operativo fue el mas sencillo a mi parecer, pues solo fue extraer la informacion 
    de los archivos generados por el sistema, donde se guarda la informacion del mismo, por lo que se me hizo sencillo."
    #Cano
    "Pues ha de estar de chill."
    #Emilio
    "Escribe aqui"
)

if [ $# == 0 ]
then
    echo "DESARROLLADORES: "
    for index in ${!developers[@]}
    do
        echo -e "\t${developers[$index]}: ${labor[$index]}"
    done
    exit
fi

dev=$1
flag=$2
for index in ${!developers[@]}
do
    if [[ "${developers[$i]}" == "$dev" ]]
    then
        if [ "$flag" == "-e" ]
        then
            echo -e "--- ${developers[$index]} ---\n${extended[$index]}"
        elif [ "$flag" == "-a" ]
        then
            echo -e "--- ${developers[$index]} ---\n${about[$index]}"
        fi
        exit
    fi
done