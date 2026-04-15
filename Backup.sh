#!/bin/bash

#Verifica se e attivo il servizio nginx 
if ! /usr/bin/systemctl is-active --quiet nginx; then

 echo  "Nginx e spento, lo riavvio..."

# Ravvio del servizio
  /usr/bin/systemctl restart  nginx

else
 
   echo "Nginx e attivo"

fi 
