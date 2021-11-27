all:
	docker-compose -f ./srcs/docker-compose.yml up
clean:
	docker-compose -f srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml ps
ps:
	docker-compose -f ./srcs/docker-compose.yml ps