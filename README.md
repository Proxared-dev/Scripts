# Scripts Bash per gestione sistema Linux
In questa repo pubblico alcuni script che ho scritto per automatizzare operazioni comuni su Linux (backup, monitoraggio servizi e gestione pacchetti).

## Cosa fanno gli script:

### 1. Backup con timestamp (`dir-backup.sh`)
Serve a fare una copia di sicurezza di una cartella specifica.
* Crea una cartella di backup se non esiste.
* Usa il comando `date` per dare un nome unico a ogni file (evita di sovrascrivere i vecchi backup).
* Controlla se la sorgente esiste prima di partire, per evitare errori.

### 2. Monitoraggio Nginx (`nginx-monitor.sh`)
Uno script per controllare che il web server sia sempre attivo.
* Verifica lo stato di Nginx tramite `systemctl`.
* Se il servizio è fermo, prova a riavviarlo in automatico.
* Comodo da usare con un cronjob per i controlli periodici.

### 3. Gestione Flatpak (`flatpak-uninstaller.sh`)
Un piccolo tool interattivo per gestire le app Flatpak.
* Elenca le applicazioni installate.
* Ti permette di scegliere quale disinstallare velocemente da terminale.

## Come usarli
Bisogna dare i permessi di esecuzione con `chmod +x nome_script.sh` e poi lanciarli con `./nome_script.sh`.
