# configuration de git
git config --global user.mail "adress mail"
git config --global user.name "name"

# Procédure de mise en place d'un dossier git
1 : Création du dossier sur github
2 : git init -> initialisation du dossier en local
3 : git remote add nom_du_dossier lien -> Configuration local pour le push
4 : git add*; git commit -m "First commit"; git push nom_du_dossier -> Envoi distant des infos ... 

# Procédure lors de la récupération d'un dossier git existant
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