HOST_USER		=	boris
PROJECT_NAME	=	inception

IMAGES 			= 	$(shell docker images -q)
CONTAINERS 		= 	$(shell docker ps -aq)
VOLUMES 		= 	$(shell docker volume ls -q)
NETWORKS		=	$(shell docker network ls -q)

all: compose

compose:

#	CREATE DATA DIR
	mkdir -p /home/$(HOST_USER)/data/wordpress	
	mkdir -p /home/$(HOST_USER)/data/mariadb
#	COMPOSE
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml up -d 

start:
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml start

stop:
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml stop

down:
	docker compose -p $(PROJECT_NAME) -f ./srcs/docker-compose.yml down

fclean: down
	-docker system prune --volumes -f

clean: clean
#	RM DATA DIR
	sudo rm -rf /home/$(HOST_USER)/data	
#	RM IMAGES
	-docker rmi -f $(IMAGES)  
#	RM CONTAINERS
#	-docker rm -f $(CONTAINERS)
#	RM VOLUMES
	-docker volume rm $(VOLUMES)
#	RM NETWORKS
#	-docker network rm $(NETWORKS)

re: fclean compose