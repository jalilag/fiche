#!bin/bash

# Création d'alias
alias key=chemin/nom 
alias python=python3

# Recherche
locate name.txt # Recherche très rapide des fichiers indéxés
sudo updatedb # MAJ de la BDD des fichiers indéxés

find where what # Recherche dans un dossier un fichier. Sans "where" la recherche s'effectue sur le dossier courant
find -name "file.txt" # Recherche dans le dossier courant le fichier dont le nom est exactement file.txt
find / -name "file.txt" # Effectue une recherche sur tout le disque 
find -size +10M # recherche par taille
find / -name "file.txt" -size +10M -atime -7 # Recherche combinée, atime indique le nombre de jours écoulé depuis le dernier acces au fichier, -7=moins de 7 jours
find / -type d # recherche type dossier (d) ou fichier (f)
find / -name "*.jpg" -printf "%p - £u\n" # recherche avec formattage des résultats
find / -name "*.jpg" -delete
find / -name "*.jpg" -exec chmod 600 {} \; # Combiner avec une commande, {} remplace le nom du fichier, \; caractère obligatoire de fin de commande

which commande # Permet de trouver l'emplacement d'une commande

# Affichage option de ls
ls -l # detaillé
ls -a # tous les fichiers
ls -h # taille 

ls -t # trier par dernière modification
ls -t -r # -r renverse l'ordre d'affichage

# Affichage de la taille
du # Indique la taille des sous-dossiers 	
du -a # Taille des fichiers et dossier
du -s # taille totale

# Affichage du contenu d'un fichier
cat filename
cat -n filename # avec numero de ligne
less filenale # Affichage page par page
head filename # Affiche le début d'un fichier
head -n # nbre de ligne à afficher
tail filename # Affiche la fin d'un fichier
tail -f -s 3 filename # Recharge toutes les 3s un fichier

# Création
touch filename
mkdir -p /un/deux/trois #creer un dossier et sous-dossier

# Lien entre fichier
ln file1 file2 # Lien physique le fichier2 partage le meme contenu que le fichier1
ln -s file1 file2 # Lien symbolique du fichier2 vers le fichier 1 equivalent au raccourci

# Superutilisateur
sudo su # Rester root
exit # Quitter le mode root

# Gestion des utilisateurs
adduser name 
deluser name # Ne supprime pas le home 
deluser --remove-home name # Supprime complétement le user
passwd user # Changer de mdp
addgroup groupname 
usermod -g groupname user # Permet de changer de groupe un user
usermod -G group1,group2 user # Permet de mettre un user dans plusieurs groupes
delgroup groupname

# Propriété des fichiers
chown user filename # Permet de changer le propriétaire d'un fichier
chgrp groupname filename # Changer le groupe propiétaire du fichier
chown user:groupname filename # Identique à chgrp
chown -R user:groupname rep # Recursivité à tout les sous-dossier et fichiers contenus dans rep

# Droits {user group other}
chmod 600 filename # r=4 ; w=2 ; x=1

# Aide
apt-get install manpages-fr # Aide en fr
man commande # Aide
whatis commande # Aide allégée
apropos keyword # Recherche dans man une commande avec le mot clé

# Configuration permanante 
force_color_prompt=yes # Coloration du terminal - Décommenter la ligne suivante dans .bashrc
~/.basrc # Localisation locale pour chaque utilisateur (prioritaire sur le global) 
/etc/bash.bashrc # Localisation globale
	
# Extraire
grep txt filename # Recherche d'un txt dans un fichier
grep "mot1 mot2 mot3" filename # Les espaces permettent de rechercher un groupe de mot séparer d'espace
grep -i txt filemane # Ne tient pas compte de la casse
grep -n txt filemane # Numéro de ligne
grep -v txt filemane # Connaitre toute les lignes qui ne contiennent le txt
grep -r txt filemane # Recherche dans les dossiers et sous-dossiers
grep -E txt filemane # Recherche avec expression régulière

# Trier un fichier
sort filename # Tri par ordre alphabétique les lignes d'un fichier
sort -o newfile filename # Enregistrer la liste trier dans un fichier

# Compter dans un fichier
wc filename # Renvoi le nbre de ligne, le nbre de mot et le nbre d'octet
wc -m filename # Compte le nbre de caractere

# Supprimer les doublons dans un fichier trié
uniq filename # Affiche une liste sans doublon
uniq filename newfil # Enregistre de la liste sans doublon dans un fichier
uniq -c filename # Indique le nbre de fois qu'une ligne est présente dans un fichier
uniq -d filename # Affiche uniquement les lignes en double

# Couper une partie d'un fichier
cut -c 2-5 filename # Conserve les caracteres 2 à 5 de chaque ligne
cut -c -5 filename # Conserve les 5 premiers caracteres de chaque ligne
cut -d , -f 1 filename # Dans le cas d'un délimiteur (ici la virgule) permet de couper par délimiteur et de choisir une colonne (ici 1)

# Expression régulière
. # Caractère qcq
^ # Debut de ligne
$ # Fin de ligne
[1-4] # Un nombre entre 1 et 4
? # Element précédent présent 0 ou 1 fois
* # Element précédent présent 0 ou 1 ou plusieurs fois
+ # Element précédent présent au moins 1 fois
| # ou
() # Groupement
{3} # Répétition du groupement précédent 3 fois
^([0-9]{2}/){2}[0-9]{4}$ # Recherche d'une date ecrite ainsi 01/02/2016


# Flux de redirection OUTPUT
ls > filename.txt # > permet de rediriger le resultat dans un fichier
ls >> filename.txt # > permet de rediriger le resultat à la fin d'un fichier
ls > filename.txt 2>> error.log # > permet de rediriger le resultat dans un fichier et les erreurs dans un autre fichier
ls > filename.txt 2>&1  # > permet de rediriger le resultat et erreur dans le même fichier

# Flux de redirection INPUT
sort << FIN # Utilise le clavier comme input pour une saisie progressive

# Chainage des commandes
ls -a | sort | uniq # Le caractere | permet d'enchainer les commande, le résultat de la première est l'input de la suivante

# Surveiller l'ordi
date # donne l'heure, la date et le décalage horaire
uptime # durée de fonctionnement de l'ordi
tload # donne la charge (derniere min, 5 min, 15min). Occupation du processeur (val max pour un dual core : 2)
w # Regroupe toute les infos. Ci-dessous le détail des colonnes.
#USER : nom de l'utilisateur
#TTY : nom de la console
#FROM : adresse IP
#LOGIN@ : Heure de dernière connexion
#IDLE : Depuis cb de temps l'utilisateur est inactif
#WHAT : La commande en cours d'execution

# Processus
ps # Donne la liste des processus lancés par un utilisateur tournant en ce moment
ps -ef # Liste tous les processus 
ps -ejH # Liste tous les processus sous forme d'abre (parents et enfants)
top # liste les processus dynamiquement, se met à jour régulièrement
kill pid # Arrete un processus selon son id
sudo halt # Arrete l'ordi
sudo reboot #redémarre l'ordi

# Lancement différé
at HH:MM jj/mm/yyyy # Indique que l'on souhaite executer une commande à tel heure. Ensuite on écrit les commandes que l'on souhaite executer
at now +5 minutes
at -f filename now +5min # Execute les commandes dans filename
atq # Liste des jobs en attente
atrm number # Supprimer un job
crontab -l # liste des jobs
crontab -e # modifier a la liste
crontab -r # supprimer la liste

# Archivage et compression (a revoir)
tar # permet de regrouper plusieurs fichiers en un seul
gzip ou bzip2 # permet de compresser un fichier
tar -cvf newfile.tar file1 file2 ... # c : creer une archive tar, f : assemble le tout dans un fichier
tar -tf file.tar # Affiche le contenu de l'archive sans l'extraire
tar -rvf newfile.tar file3 # ajoute un fichier au fichier tar
tar -xvf # extrait un fichier tar
tar -zxvf # double extraction tar et gzip

# Connexion à distance
sudo apt-get install openssh-server # Met le pc en mode serveur permettant de se connecter à lui
sudo /etc/init.d/ssh start # Lancement du serveur ssh s'il n'est pas lancé
/etc/ssh/ssh_config # Fichier de configuration du serveur
ssh login@ip # Connexion login + ip (22 est le port par défaut)
ssh login@ip -p 12451 # Port different

# Generation de clé pour connexion automatique
ssh-keygen -t rsa # Génération de clé privé/ cle publique
ssh-copy-id -i id_rsa.pub login@ip # Permet d'envoyer sa clé publique sur le serveur
ssh-add # Permet d'eviter de retaper son mot de pass dans la meme session

# Transfert de fichier
wget address filename # Permet de telecharger un fichier
wget -c address filename # Permet de reprendre un telechargement
scp origin dest # permet de copier un fichier ou dossier vers un autre ordi

# Connexion a un serveur ftp
ftp ftp.debian.org 
put # envoyer un fichier
get # récupérer un fichier
sftp login@ip # connexion sécurisée

# Synchronisation de dossier
rsync -arv origin/ dest/ # Synchronise 2 dossiers (a : conserve les info et droit; r : s'applique aux sous-dossiers)
rsync -arv --delete origin/ dest/ # Par défaut rsync ne supprime pas les fichiers dans dest s'ils sont supprimés dans origin. Pour ce la utilisez --delete
rsync -arv origin/ login@ip:backup/
