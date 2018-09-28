# configuration de git
git config --global user.mail "adress mail"
git config --global user.name "name"

# Procédure de mise en place d'un dossier git
1 : Création du dossier sur github
2 : git init -> initialisation du dossier en local
3 : git remote add origin lien -> Configuration local pour le push
4 : git add*; git commit -m "First commit"; git push nom_du_dossier -> Envoi distant des infos ... 

# Procédure lors de la récupération d'un dossier git existant, configure le remote
git clone liengit

# Branche merge commit et push
git branch test # création d'une nouvelle branche test
git checkout test # switch sur la branche test
git add * # ajout des modif
git commit -m "message" # validation des modifs
git checkout master
git merge test # fusion des branches
git push origin master # envoie des modifs vers le dossier d'origine (github)

# Mettre a jour son projet avec les éléments en ligne
git fetch origin

# Pour ignorer des fichiers dans les commit:
1 : creer un fichier .gitignore à la racine
2 : ajouter dedans les fichiers

# Forcer un pull
git fetch --all
git reset --hard origin/master

# Revenir au push précédent en sauvegardant dans une corbeil les nouveautés
git stash save -u # Sauvegarde et retour
git stash pop # Restaurer les nouveauté

# Voir ce qui a changé
git diff --cached

# Annuler tous ses commit de puis commit_id
git reset commit_id

# Rebase permet d'appliquer les commits d'une branche dans une autre.
# supposons la branche B en avance sur la branche A
# On applique B dans A ainsi
git rebase A B

# Editer le commit précédent
git commit --amend
# Le nouveau commit sera intégré au commit précédent

# Changer l'ordre des commits en interchangeant les lignes
git rebase -i commit_id
# commit_id est le plus ancien commit à partir duquel on veut travailler
# On peut aussi retravailler sur un commit précédent avec la même commande
git rebase -i commit_id
# On ecrit "edit" à la place de "pick" sur la ligne de commit que nous voulons éditer
# Ensuite on fait un git commit --amend puis git rebase --continue
