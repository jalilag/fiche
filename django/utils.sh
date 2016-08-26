#!/bin/bash

# CONFIG de base
virtualenv --python=python3 /.virtualenvs/py3dj # Creation de l'environnement virtuel py3dj (association version de python et version de django) 
source /.virtualenvs/py3dj/bin/activate # Chargement de l'environnement
pip install Django # Installation de django (une fois l'env chargé)
pip install Django --upgrade # Maj de django
django-admin.py startproject project_name # Création d'un nouveau projet
python manage.py runserver # Démarrer le serveur
python manage.py startapp # Démarrer le serveur

STATIC_URL #fait référence aux dossiers static dans app/static/ et n'ont pas à la racine. Utilisez STATIC_DIRS pour ajouter un dossier racine
