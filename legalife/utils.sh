#####
# Modification d'une vue ou BDD 
# Lancer le script validate.sh qui s'assure que les modifications sont valides
./valdiate.sh
# Lancer la commande de mise à jour pour finir
./flyway.sh localhost.conf migrate

####
# Lancer le serveur, acceder ensuite via localhost
sudo docker-compose up -d
####
# Liens install pgadmin4
https://stackoverflow.com/questions/41260004/error-trying-to-run-pgadmin4



