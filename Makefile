all:
	sudo mkdir -p /home/mteressa/data/wordpress
	sudo mkdir -p /home/mteressa/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up
clean:
	docker-compose -f srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml ps
fclean: clean
	sudo docker rmi -f $(sudo docker images -qa)
	sudo docker volume rm $(sudo docker volume ls -q)
	sudo docker system prune -a --force