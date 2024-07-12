# Commandes de Base Docker, NGINX, MariaDB et WP-CLI

## Commandes Docker de base
- **`docker build -t <image_name> .`** : Construit une image Docker à partir d'un Dockerfile.
- **`docker run --name <container_name> <image_name>`** : Exécute un conteneur à partir d'une image Docker.
- **`docker ps`** : Affiche les conteneurs Docker en cours d'exécution.
- **`docker stop <container_name>`** : Arrête un conteneur en cours d'exécution.
- **`docker start <container_name>`** : Démarre un conteneur arrêté.
- **`docker rm <container_name>`** : Supprime un conteneur Docker.
- **`docker rmi <image_id>`** : Supprime une image Docker.
- **`docker logs <container_name>`** : Affiche les journaux d'un conteneur Docker.
- **`docker exec -it <container_name> bash`** : Ouvre un terminal interactif bash dans le conteneur en cours d'exécution.

## Commandes NGINX de base
- **`nginx`** : Démarre le serveur NGINX.
- **`nginx -s stop`** : Arrête le serveur NGINX.
- **`nginx -s reload`** : Recharge la configuration du serveur NGINX sans arrêter le serveur.
- **`nginx -t`** : Teste la configuration NGINX pour des erreurs de syntaxe.

## Commandes MariaDB de base
- **`mysql -u root -p`** : Se connecte à MariaDB en tant qu'utilisateur root.
- **`CREATE DATABASE <database_name>;`** : Crée une nouvelle base de données.
- **`SHOW DATABASES;`** : Affiche toutes les bases de données.
- **`USE <database_name>;`** : Sélectionne une base de données pour les opérations ultérieures.
- **`CREATE USER '<user>'@'localhost' IDENTIFIED BY '<password>';`** : Crée un nouvel utilisateur.
- **`GRANT ALL PRIVILEGES ON <database_name>.* TO '<user>'@'localhost';`** : Accorde tous les privilèges à un utilisateur sur une base de données.
- **`FLUSH PRIVILEGES;`** : Recharge les privilèges.

## Commandes WP-CLI de base pour WordPress
- **`wp core download`** : Télécharge WordPress.
- **`wp config create --dbname=<db_name> --dbuser=<db_user> --dbpass=<db_pass>`** : Crée un fichier de configuration wp-config.php.
- **`wp db create`** : Crée la base de données définie dans le fichier wp-config.php.
- **`wp core install --url=<site_url> --title=<site_title> --admin_user=<admin_user> --admin_password=<admin_password> --admin_email=<admin_email>`** : Installe WordPress.
- **`wp plugin install <plugin> --activate`** : Installe et active un plugin.
- **`wp theme install <theme> --activate`** : Installe et active un thème.
- **`wp post create --post_type=page --post_title='<title>' --post_status=publish`** : Crée une nouvelle page avec un titre spécifié.

## Commandes Docker Compose de base
- **`docker-compose up -d`** : Démarre tous les services définis dans le fichier `docker-compose.yml` en arrière-plan.
- **`docker-compose down`** : Arrête et supprime les conteneurs, réseaux et volumes définis dans `docker-compose.yml`.
- **`docker-compose build`** : Construit ou reconstruit les services définis dans `docker-compose.yml`.
- **`docker-compose start`** : Démarre les conteneurs qui ont été arrêtés.
- **`docker-compose stop`** : Arrête les conteneurs sans les supprimer.
- **`docker-compose restart`** : Redémarre les conteneurs.
- **`docker-compose ps`** : Affiche l'état des conteneurs définis dans `docker-compose.yml`.
- **`docker-compose logs`** : Affiche les journaux des conteneurs.
- **`docker-compose exec <service_name> <command>`** : Exécute une commande dans un conteneur en cours d'exécution.
- **`docker-compose run <service_name> <command>`** : Exécute une commande dans un nouveau conteneur du service spécifié.
- **`docker-compose pull`** : Récupère les images pour les services définis dans `docker-compose.yml`.
- **`docker-compose rm`** : Supprime les conteneurs arrêtés.
- **`docker-compose config`** : Valide et affiche la configuration Compose.
- **'docker compose -f /chemin/vers/votre/docker-compose.yml up -d'** : si le docker-compose.yml se trouve dans un autre répertoire, vous pouvez spécifier son chemin à l'aide de l'option -f | -d detache la console de l'execution des containers

- **docker compose -p inception stop**
- **docker compose -p inception rm**
- **-d**: --detach
- **-f**: --file
- **-p**: --project-name