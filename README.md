# Booking app

Projet dérivée de la version 16 de coaching


# Installation GO
Pour exécuter ce projet, il est nécessaire d'avoir GO d'installer. Si ce n'est pas encore le cas voici un lien qui vous explique comment faire :

https://go.dev/doc/install

# Excécution du projet
Le projet fonctionne avec des conteneurs créés via docker, pour les lancer, vous pouvez exécuter le Makerfile. Mais si vous êtes sur Windows, il faut lancer la commande dans le Makerfile manuellement dans le terminal :

docker build -t choaching-api .

Ensuite, il faut lancer la commande suivante pour lancer les conteneurs de notre image :

docker-compose up -d

Il est possible de voir la liste des conteneurs avec :

docker ps -a

# Arrêt du projet
Pour stopper le projet, vous pouvez lancer la commande suivante (CONTAINER ID => l'id des conteneurs lancer visible avec la commande docker ps -a) :

docker stop <CONTAINER ID> <CONTAINER ID>
Puis on peut supprimer les conteneurs une fois arrêter avec :

docker-compose down

