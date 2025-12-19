 
#!/bin/bash 
# Script per cancellare tutte le applicazioni

apps=$(flatpak list --app --columns=application)

echo "Questa é la lista di applicazioni"
for app in $apps; do
    echo "$app"
done


echo "Quale vuoi cancellare ?" && read -e domanda

flatpak remove $domanda -y 
