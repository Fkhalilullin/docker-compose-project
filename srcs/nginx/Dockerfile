FROM debian:buster
RUN apt-get  update
RUN apt-get  install nginx -y
RUN apt-get  install openssl -y
RUN openssl req -x509 -new -newkey rsa:2048 -nodes \
    -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt \
    -subj "/C=RU/L=Moscow/O=ecole42/OU=school21/CN=localhost"
COPY ./nginx_conf etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]