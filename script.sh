
#! /bin/bash

# variables

version=$(node -v)

<<'###BLOCK-COMMENT'


 valor1=$(zenity --entry --title="My Title" --text="My Text:")
 valor2=$(zenity --entry --title="My Title" --text="My Text:")
if [[ $valor1 =~ ^-?[0-9]+$ ]] ; then 
    if [ $valor1 -gt $valor2 ] ; then echo " $valor1 es mayor"; fi
    if [ $valor1 -lt $valor2 ] ; then echo " $valor2 es mayor"; fi
    if [ $valor1 == $valor2 ] ; then echo " $valor2 y $valor2 son iguales"; fi

fi
###BLOCK-COMMENT

diskCuote=`df -k | awk -F " |%" '/dev/{print $5}'`
echo "cuota de disco:$diskCuote" 
zenity --info --title="system info" --text="disk space: $diskCuote"
