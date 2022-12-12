ALEATORIO=$(( $RANDOM % 50 + 1 ))
TEXTO="¡Bienvenido A Adivinator!"
echo $TEXTO
CONTADOR=0
for i in {1..10} 
do
	CONTADOR=$i
	echo "Ingrese un Número (Entre 1 y 50):"
	read NUMERO
	if [ "$NUMERO" -lt "1" ] || [ "$NUMERO" -gt "50" ]; 
	then
		echo "Che, te dije entre 1 y 50, no te pases de vivo."
		CONTADOR=11
		break

	elif [ "$NUMERO" -lt "$ALEATORIO" ] 
	then
		echo "Te quedaste cortina, es mayor el número, metele pila, volvelo a intentar."
	elif [ "$NUMERO" -gt "$ALEATORIO" ] 
	then
		echo "Te pasaste che, es menor el número, dale, intentalo de nuevo."
	else
		break
	fi
done
if [ "$CONTADOR" -le "5" ] 
then
	echo "Vamos che, yo sabía que podías, ganaste Adivinator como todo un PRO!"
elif [ "$CONTADOR" -ge "6" ] && [ "$CONTADOR" -le "10" ]
then
	echo "Felicitaciones, ganaste, pero estás algo verde, metele onda."
else
	echo "Te recomendaría replantearte tu vida, dedicate a jugar al yenga con Sofovich. Andate."
fi