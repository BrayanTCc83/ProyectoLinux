#!/bin/bash
#Declaro una matriz y las banderas
declare -A matrix
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
k=0
l=1
num_filas=11
num_colum=11
f2="%s"
#creo una funcion la cual inicializa el tablero y dibuja en cada apartado de memoria una parte del tablero
iniciar(){
for ((i=0;i<num_filas;i++)) do
	for ((j=0;j<num_colum;j++)) do
		#lo que hago aqui es acceder a los espacios de memoria y modificarlos
		matrix[$i,$j]="'"
		if [ i==3 ]
		then
		matrix[3,$j]="-"
		fi
		if [ i==7 ]
		then
		matrix[7,$j]="-"
		fi
		if [ j==3 ]
		then
		matrix[$i,3]="|"
		fi
		if [ j==7 ]
		then
		matrix[$i,7]="|"
		fi
	done
done
}
#inicializo el tablero mandando a llamar la funcion
iniciar
#aqui lo que hago es imprimir el tablero
tablero(){
for ((i=0;i<=num_filas;i++)) do
    for ((j=0;j<=num_colum;j++)) do
        printf "$f2" ${matrix[$i,$j]}
    done
	echo
done
}
#aqui lo que hago es una funcion la cual obtendra las posiciones del usuario y las dibujara
modificar(){
echo
#pido la posicion
echo "Dime la posicion"
read p
#entro en un case para saber que hacer y en que espacio dibujar La X
case $p in
	1)
	case $a in
		0)
		matrix[1,1]="X"
		#la bandera con las letra de la a a la k las utilizo como banderas para saber si el espacio esta ocupado o no
		a=$(( a + 1 ))
		#la bandera l es para saber a quien le toca
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	2)
	case $b in
		0)
		matrix[1,5]="X"
		b=$(( b + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	3)
	case $c in
		0)
		matrix[1,9]="X"
		c=$(( c + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	4)
	case $d in
		0)
		matrix[5,1]="X"
		d=$(( d + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	5)
	case $e in
		0)
		matrix[5,5]="X"
		e=$(( e + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	6)
	case $f in
		0)
		matrix[5,9]="X"
		f=$(( f + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	7)
	case $g in
		0)
		matrix[9,1]="X"
		g=$(( g + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;

	8)
	case $h in
		0)
		matrix[9,5]="X"
		h=$(( h + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	9)
	case $k in
		0)
		matrix[9,9]="X"
		k=$(( k + 1 ))
		l=$(( l + 1 ))
		jugar
		;;
		1)
		echo "La pocision ya esta ocupada"
		jugar
		;;
	esac
	;;
	*)
	echo "LO SIENTO TE SALISTE DE LOS PARAMATROS"
	jugar
	;;
esac
}
#Aqui creo una funcion y programo una IA (UNA IA MUY FACIL) con random y programo lo que hara
computadora(){
p=$((1 + $RANDOM % 9))
#del random obtengo un posible espacio
case $p in
	1)
	case $a in
		0)
		#la bandera con cada letra dice si el espacio esta ocupado o no y si no pues lo dibuja y aumenta la bandera para que ya no sea ocupada
		matrix[1,1]="O"
		a=$(( a + 1 ))
		#la bandera con la letra l me permite saber de quien es el turno
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;
	2)
	case $b in
		0)
		matrix[1,5]="O"
		b=$(( b + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;
	3)
	case $c in
		0)
		matrix[1,9]="O"
		c=$(( c + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;
	4)
	case $d in
		0)
		matrix[5,1]="O"
		d=$(( d + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;
	5)
	case $e in
		0)
		matrix[5,5]="O"
		e=$(( e + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;
	6)
	case $f in
		0)
		matrix[5,9]="O"
		f=$(( f + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
	esac
	;;
	7)
	case $g in
		0)
		matrix[9,1]="O"
		g=$(( g + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;

	8)
	case $h in
		0)
		matrix[9,5]="O"
		h=$(( h + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;
	9)
	case $k in
		0)
		matrix[9,9]="O"
		k=$(( k + 1 ))
		l=$(( l - 1 ))
		jugar
		;;
		1)
		computadora
		;;
	esac
	;;
	*)
	computadora
	;;
esac
}
#en esta funcion compruebo si el juego ya acabo o no
comprobar(){
if [[ $a -eq 1&&$b -eq 1&&$c -eq 1 ]]
then
	a=$(( a + 1 ))
	b=$(( b + 1 ))
	c=$(( c + 1 ))
	d=$(( d + 1 ))
	e=$(( e + 1 ))
	f=$(( f + 1 ))
	g=$(( g + 1 ))
	h=$(( h + 1 ))
	k=$(( k + 1 ))
	echo "EL JUEGO A TERMINADO"
elif [[ $a -eq 1&&$e -eq 1&&$k -eq 1 ]]
then
	a=$(( a + 1 ))
	b=$(( b + 1 ))
	c=$(( c + 1 ))
	d=$(( d + 1 ))
	e=$(( e + 1 ))
	f=$(( f + 1 ))
	g=$(( g + 1 ))
	h=$(( h + 1 ))
	k=$(( k + 1 ))
	echo "EL JUEGO A TERMINADO"
elif [[ $c -eq 1&&$e -eq 1&&$g -eq 1 ]]
then
	a=$(( a + 1 ))
	b=$(( b + 1 ))
	c=$(( c + 1 ))
	d=$(( d + 1 ))
	e=$(( e + 1 ))
	f=$(( f + 1 ))
	g=$(( g + 1 ))
	h=$(( h + 1 ))
	k=$(( k + 1 ))
	echo "EL JUEGO A TERMINADO"
elif [[ $c -eq 1&&$f -eq 1&&$k -eq 1 ]]
then
	a=$(( a + 1 ))
	b=$(( b + 1 ))
	c=$(( c + 1 ))
	d=$(( d + 1 ))
	e=$(( e + 1 ))
	f=$(( f + 1 ))
	g=$(( g + 1 ))
	h=$(( h + 1 ))
	k=$(( k + 1 ))
	echo "EL JUEGO A TERMINADO"
elif [[ $g -eq 1&&$h -eq 1&&$k -eq 1 ]]
then
	a=$(( a + 1 ))
	b=$(( b + 1 ))
	c=$(( c + 1 ))
	d=$(( d + 1 ))
	e=$(( e + 1 ))
	f=$(( f + 1 ))
	g=$(( g + 1 ))
	h=$(( h + 1 ))
	k=$(( k + 1 ))
	echo "EL JUEGO A TERMINADO"
elif [[ $a -eq 1&&$d -eq 1&&$g -eq 1 ]]
then
	a=$(( a + 1 ))
	b=$(( b + 1 ))
	c=$(( c + 1 ))
	d=$(( d + 1 ))
	e=$(( e + 1 ))
	f=$(( f + 1 ))
	g=$(( g + 1 ))
	h=$(( h + 1 ))
	k=$(( k + 1 ))
	echo "EL JUEGO A TERMINADO"
elif [[ $d -eq 1&&$e -eq 1&&$f -eq 1 ]]
then
	a=$(( a + 1 ))
	b=$(( b + 1 ))
	c=$(( c + 1 ))
	d=$(( d + 1 ))
	e=$(( e + 1 ))
	f=$(( f + 1 ))
	g=$(( g + 1 ))
	h=$(( h + 1 ))
	k=$(( k + 1 ))
	echo "EL JUEGO A TERMINADO"
fi
}
#aqui pues le pongo un titulo cuando inicia
echo "JUEGO DEL GATO Y EL RATON"
#creo la funcion principal
jugar(){
tablero
comprobar
#Verifico si todos los espacios ya fueron ocupados.
while [[ $a -eq 0||$b -eq 0||$c -eq 0||$d -eq 0||$e -eq 0||$f -eq 0||$g -eq 0||$h -eq 0||$k -eq 0 ]]
do
	case $l in
		1)
		modificar
		;;
		2)
		computadora
		;;
	esac
done
}
jugar
