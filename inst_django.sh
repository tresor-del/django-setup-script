#!/bin/bash

# Fonctions pour les couleurs
red='\e[31m'
green='\e[32m'
yellow='\e[33m'
nc='\e[0m' # No Color

echo -e "${yellow}Bienvenue dans le programme d'installation de projet django pour Linux${nc}"

# Vérification de Python 3
if command -v python3 &>/dev/null; then
    echo -e "${green}Python 3 est déjà installé${nc}"
    python3 --version
else
    echo "==============Installation de Python======================"
    sudo apt update && sudo apt install -y python3 python3-pip
    if [ $? -ne 0 ]; then
        echo -e "${red}Erreur lors de l'installation de Python${nc}"
        exit 1
    fi
    python3 --version
    echo -e "${green}Terminé${nc}"
fi

echo "==============Installation de Django======================"
sudo apt install python3-django
if [ $? -ne 0 ]; then
    echo -e "${red}Erreur lors de l'installation de Django${nc}"
    exit 1
fi
python3 -m django --version
echo -e "${green}Terminé${nc}"

read -p "Quel est le nom de votre projet? " project_name

django-admin startproject $project_name
if [ $? -ne 0 ]; then
    echo -e "${red}Erreur lors de la création du projet Django${nc}"
    exit 1
fi
echo "=========MIGRATIONS========="
python3 ./$project_name/manage.py migrate
if [ $? -ne 0 ]; then
    echo -e "${red}Erreur lors des migrations${nc}"
    exit 1
fi
echo -e "${green}Terminé${nc}"

echo "======CREATION D'UN SUPERUSER======="
python3 ./$project_name/manage.py createsuperuser
if [ $? -ne 0 ]; then
    echo -e "${red}Erreur lors de la création du superutilisateur${nc}"
    exit 1
fi
echo -e "${green}Terminé${nc}"

read -p 'Voulez-vous ouvrir vscode? (y/n) ' yesOrNo
if [ "$yesOrNo" == "y" ] ; then
    echo "======OUVERTURE DE VSCODE========"
    code ./$project_name &
    echo -e "${green}Terminé${nc}"
fi

read -p 'Projet créé avec succès. Voulez-vous lancer le serveur? (y/n) ' yesOrNo
if [ "$yesOrNo" == "y" ] ; then
    python3 ./$project_name/manage.py runserver
fi
