#!/bin/bash

# CONFIG de base
virtualenv --python=python3 /.virtualenvs/py3dj # Creation de l'environnement virtuel py3dj (association version de python et version de django) 
source /.virtualenvs/py3dj/bin/activate # Chargement de l'environnement
pip install Django # Installation de django (une fois l'env chargé)
pip install Django --upgrade # Maj de django
django-admin.py startproject project_name # Création d'un nouveau projet
python manage.py runserver # Démarrer le serveur
python manage.py startapp # Nouvelle application

STATIC_URL #fait référence aux dossiers static dans app/static/ et n'ont pas à la racine. Utilisez STATIC_DIRS pour ajouter un dossier racine

STATIC_URL = '/static/' 
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, "static"),
]

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR,os.path.join(BASE_DIR,'template')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.template.context_processors.i18n',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'crepes.context_processors.generic_information',
            ],
        },
    },
]