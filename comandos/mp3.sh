#!/bin/bash
reproducir(){
cd "$r"
mpg123 $r/*.mp3
}
lista(){
rm .lista &>/dev/null
ls>>.lista
whiptail --title "REPRODUCTOR DE MUSICA" \
         --textbox .lista 10 80
op=$(whiptail --title "MENU" \
               --menu "Elige una opción" 10 80 2 \
               "LISTA" "MUESTRA LA LISTA DE CANCIONES" \
               "INSTRUCCIONES" "MUESTRA LAS INTRUCCIONES" \
	       "REPRODUCIR" "INICIALIZA EL REPRODUCTOR" \
               3>&1 1<&2 2>&3)
case $op in
	"LISTA")
	cd "$r" &>/dev/null
	rm .lista &>/dev/null
	lista
	;;
	"REPRODUCIR")
	reproducir
	;;
	"INSTRUCCIONES")
	instrucciones
	;;
esac
}

instrucciones(){
whiptail --title "INSTRUCCIONES"\
	 --msgbox "PRESIONA h en la terminal cuando se reprodusca la musica" 10 80
i=$(whiptail --title "MENU" \
               --menu "Elige una opción" 10 80 2 \
               "LISTA" "MUESTRA LA LISTA DE CANCIONES" \
	       "INSTRUCCIONES" "MUESTRA LAS INTRUCCIONES" \
               "REPRODUCIR" "INICIALIZA EL REPRODUCTOR" \
               3>&1 1<&2 2>&3)
case $i in
	"LISTA")
	instrucciones
	;;
	"REPRODUCIR")
	reproducir
	;;
	"INSTRUCCIONES")
	instrucciones
	;;
esac
}
pedir(){
echo "Dime la ruta donde tienes tu musica con el siguiente formato"
echo "/ruta"
read r
cd "$r" &>/dev/null
if [ $? -eq 0 ];then
	mp3
else
	echo
	echo "La ruta que me diste esta mal"
	pedir
fi
}

mp3(){
op=$(whiptail --title "MENU" \
               --menu "Elige una opción" 10 80 2 \
               "LISTA" "MUESTRA LA LISTA DE CANCIONES" \
	       "INSTRUCCIONES" "MUESTRA INSTRUCCIONES" \
               "REPRODUCIR" "INICIALIZA EL REPRODUCTOR" \
               3>&1 1<&2 2>&3)
case $op in
	"LISTA")
	lista
	;;
	"REPRODUCIR")
	reproducir
	;;
	"INSTRUCCIONES")
	instrucciones
	;;
esac
}
Verificar(){
dpkg -l	| grep "mpg123"> /dev/null
if [ $? -eq 0 ];then
	pedir
else
	echo "Deseas instalar el paquete necesario para que el programa corra? (y/n) "
	read op
	case $op in
		y)
		sudo apt-get update
		sudo apt-get install mpg123
		;;
		n)
		;;
		*)
		echo "LO SIENTO DESCONOZCO ESA OPCION"
		Verificar
		;;
	esac
fi
}
Verificar
