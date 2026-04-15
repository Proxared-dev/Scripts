#!/bin/bash

# Data per il nome del backup
DATA=$(date +%Y-%m-%d_%H-%M-%S)

SOURCE="$HOME/dati"
DEST="$HOME/backup"

# Controlla se la cartella sorgente esiste
if [ ! -d "$SOURCE" ]; then
    echo "Errore: la cartella $SOURCE non esiste."
    exit 1
fi

# Crea la cartella di destinazione se non esiste
mkdir -p "$DEST"
