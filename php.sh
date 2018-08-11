#!/bin/bash

#instala apache, mysql e php

sudo apt-get update
sudo apt-get install apache2

sudo apt-get update
sudo apt-get install mysql-server

sudo apt-get update
sudo apt-get install php php-fpm libapache2-mod-php php-mcrypt php-mysql

sudo service mysql stop
sudo service mysql start

/etc/init.d/apache2 stop
/etc/init.d/apache2 start

