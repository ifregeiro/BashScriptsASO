echo "Buenas, $USER."
OPCION=0
while [ "$OPCION" -ne "3" ]
do
	echo
	echo "¿Qué quiere saber ahora?"
    echo "____________________________"
	echo
	echo "1. Horario (Formato 12hs)."
	echo "2. Clima actual de Bahía Blanca."
	echo "3. Salir."
	echo "____________________________"
	echo
	echo "Elección: "
	read OPCION
	case $OPCION in
		1)
			echo "___________________"
			echo
			echo "Son la/s: "
			date +"%I:%M %p"
			echo "___________________"
			;;
		2)
			echo "___________________"
			echo
			curl wttr.in/Bahia-Blanca?lang=es
			echo "___________________"
			;;
	esac
done
echo "Hasta luego $USER, esperemos que le haya sido de utilidad."	