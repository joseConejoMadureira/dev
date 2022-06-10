
echo Nome  projeto laravel?
read varname

cd ..

sudo mv  $varname   /var/www/html/

sudo chgrp -R www-data /var/www/html/$varname/

sudo chmod -R 775 /var/www/html/$varname/storage

echo "
<VirtualHost *:80>

   ServerName thedomain.com

   ServerAdmin webmaster@thedomain.com

   DocumentRoot /var/www/html/$varname/public

 

   <Directory /var/www/html/$varname>

       AllowOverride All

   </Directory>

   ErrorLog ${APACHE_LOG_DIR}/error.log

   CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>

" > /etc/apache2/sites-available/$varname.conf

sudo a2dissite 000-default.conf
sudo a2ensite $varname
sudo a2enmod rewrite
sudo systemctl restart apache2