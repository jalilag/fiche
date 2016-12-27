#!/bin/bash

# CONFIG de base
virtualenv --python=python3 /.virtualenvs/py3dj # Creation de l'environnement virtuel py3dj (association version de python et version de django) 
source /.virtualenvs/py3dj/bin/activate # Chargement de l'environnement
pip install Django # Installation de django (une fois l'env chargé)
pip install Django --upgrade # Maj de django
django-admin.py startproject project_name # Création d'un nouveau projet
python manage.py runserver # Démarrer le serveur
python manage.py startapp # Nouvelle application

#fait référence aux dossiers static dans app/static/ et n'ont pas à la racine. Utilisez STATIC_DIRS pour ajouter un dossier racine
# Le dossier static contient tout les fichiers autres que le code (images, css, son ...)
STATIC_URL 
STATIC_URL = '/static/' 
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static"),
]

# Lorsque l'on doit charger un ensemble de variables générales il faut utiliser le context processors.
# Pour cela on crée un fichier context_processors.py dans le dossier de l'appli.
# On ajoute dedans les fonctions récupérant les variables.
# Enfin dans la variable de TEMPLATES de settings.py on ajoute le context dans la liste context_processors tel que:
'appname.context_processors.funcname'

