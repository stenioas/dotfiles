#!/usr/bin/env bash

# Define a cor de fundo com base no número de atualizações (opcional no Waybar, mas útil para o CSS)
# Pacman: checa os pacotes e conta as linhas
UPDATES=$(pacman -Qu | wc -l)

# Se for maior que zero, exibe a contagem
if [ "$UPDATES" -gt 0 ]; then
    echo "{\"text\": \"$UPDATES\", \"tooltip\": \"$UPDATES pacotes para atualizar.\", \"class\": \"pending\"}"
# Se for zero, exibe zero
else
    echo "{\"text\": \"$UPDATES\", \"tooltip\": \"Sistema atualizado.\", \"class\": \"ready\"}"
fi
