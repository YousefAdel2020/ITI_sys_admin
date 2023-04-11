sudo apt install nginx

sudo ufw allow 80/tcp

sudo apt install php-fpm

sudo echo "     location ~ \.php$ {
              include snippets/fastcgi-php.conf;
              fastcgi_pass unix:/run/php/php8.1-fpm.sock;
        }" >> /etc/nginx/sites-available/default


sudo nano /var/www/html/index.html

