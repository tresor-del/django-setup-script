# Django Project Setup Script

Bienvenue dans le **Django Project Setup Script**. Ce script vous aide à installer et configurer rapidement un nouveau projet Django sous Linux.

## Table des matières

1. [Aperçu](#aperçu)
2. [Prérequis](#prérequis)
3. [Installation](#installation)
4. [Utilisation](#utilisation)
5. [Fonctionnalités](#fonctionnalités)
6. [Contribution](#contribution)
7. [Licence](#licence)

## Aperçu

Ce script automatise l'installation de Python, Django, et la configuration initiale d'un projet Django. Il facilite la création de projets et permet un démarrage rapide avec Django.

## Prérequis

Avant de commencer, assurez-vous que vous avez les éléments suivants :

- Un système d'exploitation Linux (Ubuntu recommandé).
- Accès root ou sudo pour installer des paquets.
- Une connexion Internet pour télécharger les paquets nécessaires.

## Installation

1. Clonez le dépôt GitHub sur votre machine locale :

   ```bash
   git clone https://github.com/tresor-del/django-setup-script.git
   cd django-setup-script

2. Rendre le script exécutable :

    ```bash
    chmod +x inst_django.sh

3. Exécutez le script :

    ```bash
    ./inst_django.sh

## Utilisation

    Suivez les instruSuivez  fournies par le script pour :

    - Installer Python et Django.
    - Créer un nouveau projet Django.
    - Effectuer des migrations initiales.
    - Créer un superutilisateur.
    - Ouvrir le projet das Vs Code (optionnel).
    - Lancer le serveur de développement Django (optionnel).

## Fonctionnalités

**Installation de Python**: Vérifie la présence de Python et l'installe si nécessaire.
**Installation de Django** : Install Django via pip.
**Création de projet** : Initialise un nouveau projet django avec le nom fourni.
**Migrations** : Exécute les migrations initiales pour préparer la base de données.
**Création de super utilisateur** : Guide l'utilisateur à travers la création d'un super utilisateur.
**Option d'ouverture dans VS Code** : Offre la possibilité d'ouvrir le projet dans VS Code.
**Lancement du serveur de développement** : Permet de démarrer le serveur de développement Django.

## Contribution

    Les contributions sont les bienvenues! Veuillez suivre les étapes ci-dessous pour contribuer :

    Forkez le dépôt.

    Créez une branche pour votre fonctionnalité ou correction de bug (git checkout -b ma-nouvelle-fonctionnalité).

    Commitez vos modifications (git commit -m 'Ajout d'une nouvelle fonctionnalité').

    Poussez vers la branche (git push origin ma-nouvelle-fonctionnalité).

    Ouvrez une Pull Request.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
