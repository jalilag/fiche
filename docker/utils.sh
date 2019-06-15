## Lancer une image
docker run -ti NOM_IMAGE
# -t pour terminal
# -i pour interactif
# -d pour lancer en détacher

## Liste des containeurs 
# En train de s'executer
docker ps
# Tous les containers
docker ps -a

## Dockerfile
docker build -t image_name repository
CMD ["script.sh"] 
# Ne s'execute pas lors du docker run -ti bash 
# bash remplace commande
# pour eviter ca utiliser ENTRYPOINT
ENTRYPOINT ["script.sh"]

# Dans le cas d'une erreur lorsque l'on monte les disque durs virtuels 
# Faire refresh credential dans shared drives 
# https://github.com/docker/for-win/issues/1560#issuecomment-380393488 
