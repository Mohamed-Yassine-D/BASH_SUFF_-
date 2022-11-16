#!/bin/bash

## Recuper le SCREEN apret utilisation 
trap "tput rmcup; exit"  SIGHUP SIGINT SIGTERM

## Sauvgarde le contenu du SCREEN
tput smcup

clear

##changer selon votre arborecence et l'emplacment de votre fichier log 
LOG_SPOT="/var/log/auth.log.1"
##dossier cree au prealable pas moi (log_pc)
LOG_STOCK="/home/book/Documents/log_pc"

##super user chercher format date dans variable ($LOG_SPOT)
##et place le dans ficher txt (log_pc_clear.txt)
sudo grep date $LOG_SPOT >> log_pc_clear.txt;
## deplace dans variable ($LOG_STOCK
mv log_pc_clear.txt $LOG_STOCK
echo -e "\n"
echo  "LOG MIS A JOUR"
echo  "chemin du fichier /home/utisisateur/Documents/log_pc"
echo -e "\n"
echo "B4RT_vous_dit_merci"
