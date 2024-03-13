#!/bin/bash

echo "Selecciona la opción:"
echo "1. Instalar paquetes con pacman"
echo "2. Instalar paquetes con yay"

read -n1 -p "Ingresa el número de la opción deseada: " opcion
echo

case $opcion in
    1)
        # Opción para instalar paquetes con pacman
        pacman -Slq | fzf --border --reverse --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
        ;;
    2)
        # Opción para instalar paquetes con yay
        yay -Slq | fzf --border --reverse --multi --preview 'yay -Si {1}' | xargs -ro yay -S
        ;;
	$'\e')  # Se refiere a la tecla Escape
        echo "Saliendo sin hacer nada."
        ;;
    *)
        echo "Opción no válida. Saliendo."
        ;;
esac

