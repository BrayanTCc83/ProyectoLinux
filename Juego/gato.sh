#!/bin/bash
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
iniciar(){
for ((i=0;i<num_filas;i++)) do
	for ((j=0;j<num_colum;j++)) do
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

iniciar

tablero(){
for ((i=0;i<=num_filas;i++)) do
    for ((j=0;j<=num_colum;j++)) do
        printf "$f2" ${matrix[$i,$j]}
    done
	echo
done
}
modificar(){
echo
echo "Dime la posicion"
read p
case $p in
	1)
	case $a in
		0)
		matrix[1,1]="X"
		a=$(( a + 1 ))
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
computadora(){
p=$((1 + $RANDOM % 9))
case $p in
	1)
	case $a in
		0)
		matrix[1,1]="O"
		a=$(( a + 1 ))
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
echo "JUEGO DEL GATO Y EL RATON"
jugar(){
tablero
comprobar
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
