all:
	sudo mkdir -p /home/mteressa/data/wordpress
	sudo mkdir -p /home/mteressa/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up
clean:
	docker-compose -f srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml ps
ps:
	docker-compose -f ./srcs/docker-compose.yml ps
fclean:
	docker-compose -f ./srcs/docker-compose.yml down
	-docker stop `docker ps -qa`
	-docker rm `docker ps -qa`
	-docker rmi -f `docker images -qa`
	-docker volume rm `docker volume ls -q`
	-docker network rm `docker network ls -q`
	sudo rm -rf /home/mteressa/data