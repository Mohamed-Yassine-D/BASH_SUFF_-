#!/bin/bash

##verification admin
test=`whoami`
if [ $test != "root" ]; then
echo "lancer le script en avec sudo"
exit
fi

## Recuper le SCREEN apret utilisation 
trap "tput rmcup; exit"  SIGHUP SIGINT SIGTERM

## Sauvgarde le contenu du SCREEN
tput smcup

clear
cd ~/B4RT
## faire selon l'emplasment du dossier NE PAS TOUCHER A B4RT!!!
LOG_STOCK="/home/book/B4RT/LOG_STOCK.sh"
UPDATE_S="/home/book/B4RT/UPDATE_S.sh"
MODUL_CO="/home/book/B4RT/"
##==================================

echo "========================================================"
echo "|_B4RT_Version:tkt_tu_coco._____by.moi_AKA_lastar______|"
echo "|______________________________________________________|"
echo "|                                                      |"
echo "|_Si_ta_fait_les_exo_bash_ta_capter____________________|"
echo "|_MODUL_CO_HORS_SERVICE________________________________|"
echo "|======================================================|"
echo -e "\n"


while true
##while true do done c'est pour la boucle
do
echo "==========================="
echo "=____Menu___====___B4RT___="
echo "==========================="
echo -e "\n"
echo "Entrer 1 pour LOG_STOCK"
echo "Entrer 2 pour UPDATE_S"
echo "Entrer 3 pour MODUL_CO"
echo "Entrer x pour EXIT"
echo -e "\n"
echo -e "Entrer votre choix \c"
read REP

##case esac
case "$REP" in
1) .$LOG_STOCK ;; 

2) .$UPDATE_S ;;

3) .$MODUL_CO ;;

x) exit ;;
esac
done
