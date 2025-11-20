#!/usr/bin/env bash

# needs pacman-contrib package
UPDATES=$(checkupdates | wc -l)

if [ "$UPDATES" -gt 0 ]; then
    echo "{\"text\": \"$UPDATES\", \"tooltip\": \"$UPDATES pacotes para atualizar.\", \"class\": \"pending\"}"
else
    echo "{\"text\": \"$UPDATES\", \"tooltip\": \"Sistema atualizado.\", \"class\": \"ready\"}"
fi
