sudo docker-compose -f srcs/docker-compose.yml down
sudo docker rmi -f $(sudo docker images -qa)
sudo docker rm -f $(sudo docker ps -qa)
sudo docker rm -f $(sudo docker ps -ls)
sudo docker volume rm $(sudo docker volume ls -q)
sudo docker system prune -a --volume
sudo docker system prune -a --force
sudo rm -rf /home/mteressa/data/wordpress
sudo rm -rf /home/mteressa/data/mariadb
sudo mkdir /home/mteressa/data/wordpress
sudo mkdir /home/mteressa/data/mariadb