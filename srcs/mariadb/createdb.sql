CREATE DATABASE Mteressa;
CREATE USER 'mteressa'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON Mteressa.* TO 'mteressa'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';