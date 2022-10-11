#!/bin/bash
play(){
echo "RECUERDA EN EL JUEGO LAS CASILLAS ESTAN ENUMERADAS DEL 1 AL 9"
echo "De ARRIBA A ABAJO Y DE IZQUIERDA A DERECHA"
echo "Escoge 1 de las 9 casillas Disponibles"
read n
case $n in 
	1)
	clear
	echo "-------------"
	echo "| * |   |   |"
	echo "-------------"
	echo "|   | o |   |"
	echo "-------------"
	echo "|   |   |   |"
	echo "-------------"
	echo "Escoge 1 de las 7 casillas Disponibles"
	read op
	case $op in
		2)
		echo "-------------"
		echo "| * | * | o |"
		echo "-------------"
		echo "|   | o |   |"
		echo "-------------"
		echo "|   |   |   |"
		echo "-------------"
		echo "Escoge 1 de las 5 casillas Disponibles"
		read op1
		case $op1 in
			4)
			echo "LO SIENTO HE GANADO"
			echo "-------------"
			echo "| * | * | o |"
			echo "-------------"
			echo "| * | o |   |"
			echo "-------------"
			echo "| o |   |   |"
			echo "-------------"
			;;
			6)
			echo "LO SIENTO HE GANADO"
			echo "-------------"
			echo "| * | * | o |"
			echo "-------------"
			echo "|   | o | * |"
			echo "-------------"
			echo "| o |   |   |"
			echo "-------------"
			;;
			7)
			echo "-------------"
			echo "| * | * | o |"
			echo "-------------"
			echo "| o | o |   |"
			echo "-------------"
			echo "| * |   |   |"
			echo "-------------"
			echo "Escoge 1 de las 3 casillas disponibles"
			read op2
			case $op2 in
				6)
				echo "-------------"
				echo "| * | * | o |"
				echo "-------------"
				echo "| o | o | * |"
				echo "-------------"
				echo "| * |   |   |"
				echo "-------------"
				echo "Escoge 1 de las 2 casillas disponibles"
				read op3
				case $op3 in
					8)
					echo "NADIE GANO ERES MALO :( "
					echo "-------------"
					echo "| * | * | o |"
					echo "-------------"
					echo "| o | o | * |"
					echo "-------------"
					echo "| * | * | o |"
					echo "-------------"
					;;
					9)
					echo "NADIE GANO ERES MALO :( "
					echo "-------------"
					echo "| * | * | o |"
					echo "-------------"
					echo "| o | o | * |"
					echo "-------------"
					echo "| * | o | * |"
					echo "-------------"
					;;
					*)
					echo "lo siento acuerdate que no puedes juagar con casillas ocupadas o fuera de los paramatros"
					;;
				esac
				;;
				8)
				echo "LO SIENTO HE GANADO"
				echo "-------------"
				echo "| * | * | o |"
				echo "-------------"
				echo "| o | o | o |"
				echo "-------------"
				echo "| * | * |   |"
				echo "-------------"
				;;
				9)
				echo "LO SIENTO HE GANADO"
				echo "-------------"
				echo "| * | * | o |"
				echo "-------------"
				echo "| o | o | o |"
				echo "-------------"
				echo "| * |   | * |"
				echo "-------------"
				;;
				*)
				echo "lo siento acuerdate que no puedes juagar con casillas ocupadas o fuera de los paramatros"
				;;
			esac
			;;
			8)
			echo "LO SIENTO HE GANADO"
			echo "-------------"
			echo "| * | * | o |"
			echo "-------------"
			echo "|   | o |   |"
			echo "-------------"
			echo "| o | * |   |"
			echo "-------------"
			;;
			9)
			echo "LO SIENTO HE GANADO"
			echo "-------------"
			echo "| * | * | o |"
			echo "-------------"
			echo "|   | o |   |"
			echo "-------------"
			echo "| o |   | * |"
			echo "-------------"
			;;
			*)
			echo "lo siento acuerdate que no puedes juagar con casillas ocupadas o fuera de los paramatros"
			;;
		esac
		;;
		3)
		echo "-------------"
		echo "| * | o | * |"
		echo "-------------"
		echo "|   | o |   |"
		echo "-------------"
		echo "|   |   |   |"
		echo "-------------"
		;;
		4)
		echo "-------------"
		echo "| * |   |   |"
		echo "-------------"
		echo "| * | o |   |"
		echo "-------------"
		echo "| o |   |   |"
		echo "-------------"
		;;
		6)
		echo "-------------"
		echo "| * |   | o |"
		echo "-------------"
		echo "|   | o | * |"
		echo "-------------"
		echo "|   |   |   |"
		echo "-------------"
		;;
		7)
		echo "-------------"
		echo "| * |   |   |"
		echo "-------------"
		echo "| o | o |   |"
		echo "-------------"
		echo "| * |   |   |"
		echo "-------------"
		;;
		8)
		echo "-------------"
		echo "| * |   |   |"
		echo "-------------"
		echo "|   | o |   |"
		echo "-------------"
		echo "| o | * |   |"
		echo "-------------"
		;;
		9)
		echo "-------------"
		echo "| * |   |   |"
		echo "-------------"
		echo "|   | o |   |"
		echo "-------------"
		echo "|   | o | * |"
		echo "-------------"
		;;
		*)
		echo "lo siento acuerdate que no puedes juagar con casillas ocupadas o fuera de los paramatros"
		;;
	esac
	;;
	*)
	echo "lo siento te saliste de los paramatros"
	;;
esac

}
Inicio(){
echo "Hola Bienvenido al juego del Gato y el raton."
echo "Jugara contra la computadora"
echo "-------------"
echo "|   |   |   |"
echo "-------------"
echo "|   |   |   |"
echo "-------------"
echo "|   |   |   |"
echo "-------------"
play
}

Inicio
