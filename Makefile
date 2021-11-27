all:
	sudo mkdir -p /home/mteressa/data/wordpress
	sudo mkdir -p /home/mteressa/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up
clean:
	docker-compose -f srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml ps
ps:
	docker-compose -f ./srcs/docker-compose.yml ps