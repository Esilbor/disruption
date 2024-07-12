# Variables
HOST_USER       = boris
PROJECT_NAME    = inception

IMAGES          = $(shell docker images -q)
CONTAINERS      = $(shell docker ps -aq)
VOLUMES         = $(shell docker volume ls -q)
NETWORKS        = $(shell docker network ls -q)

all: compose

compose: 
	mkdir -p /home/$(HOST_USER)/data/wordpress
	mkdir -p /home/$(HOST_USER)/data/mariadb
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml up --build -d 
start:
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml start
stop:
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml stop
down:
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml down

fclean: down
	-docker system prune --volumes -f

clean: down
# Remove Docker containers
	-docker compose -p $(PROJECT_NAME) rm -f
# Remove Docker volumes
	-docker volume rm -f $(VOLUMES)
# Remove specific data directory
	sudo rm -rf /home/$(HOST_USER)/data

re: fclean compose
