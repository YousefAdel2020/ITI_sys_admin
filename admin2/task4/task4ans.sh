#!/bin/bash

sudo apt install apache2
sudo echo "<html><head></head><body><h1>hello ITI<h1></body>" > /var/www/html/index.html
sudo apt search libapache2 | grep php
sudo apt install libapache2-mod-php8.1
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/mynewvirtualhost.conf

sudo nano /etc/apache2/sites-available/mynewvirtualhost.conf
mkdir /var/www/html/iti1

echo "<?php echo'hello from php index'" > /var/www/html/iti1/index.php

sudo nano /etc/hosts

sudo a2ensite mynewvirtualhost.conf

sudo service apache2 restart 

sudo echo "<VirtualHost *:80>
    ServerName iti1.local
    DocumentRoot /var/www/html/iti1
    <Directory>
        Options -Indexes
    </Directory>
	ServerAdmin webmaster@localhost
	DocumentRoot /var/www/html/iti1
	ErrorLog ${APACHE_LOG_DIR}/error.log
	CustomLog ${APACHE_LOG_DIR}/iti1-access.log combined
</VirtualHost>" > /etc/apache2/sites-available/mynewvirtualhost.conf
