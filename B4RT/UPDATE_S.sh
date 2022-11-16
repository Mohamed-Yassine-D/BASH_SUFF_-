#!/bin/bash

## Recuper le SCREEN apret utilisation 
trap "tput rmcup; exit"  SIGHUP SIGINT SIGTERM

## Sauvgarde le contenu du SCREEN
tput smcup

clear


echo  "teste update"

apt-get update && apt-get -y dis-upgrade ;
apt-get -y autoremove --purge && apt-get autoclean ;

echo -e "\n"
echo "B4RT_vous_dit_merci"
