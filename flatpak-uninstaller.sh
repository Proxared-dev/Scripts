 
#!/bin/bash

# Lista applicazioni Flatpak installate
apps=$(flatpak list --app --columns=application)

echo "Lista applicazioni installate:"
for app in $apps; do
    echo "- $app"
done

# Chiede all'utente quale rimuovere
read -p "Quale applicazione vuoi rimuovere? " domanda

# Rimozione applicazione
flatpak remove "$domanda" -y

echo "Operazione completata"
