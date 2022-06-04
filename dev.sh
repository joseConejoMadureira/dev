# bash para instalação de uma maquina dev.
# use comando bash dev.sh para inciar a instalação
# senha é senha sudo/root de sua maquina
echo 'senha' | sudo -S apt-get update
echo 'senha' | sudo -S apt-get upgrade
echo 'senha' | sudo -S apt install -y software-properties-common
echo 'senha' | sudo -S add-apt-repository ppa:ondrej/php
echo 'senha' | sudo -S apt-get update
echo 'senha' | sudo -S apt install -y php
echo 'senha' | sudo -S apt install -y curl
echo 'senha' | sudo -S apt install -y apache2
echo 'senha' | sudo -S apt install -y libapache2-mod-php
echo 'senha' | sudo -S apt install -y php-xmlrpc
echo 'senha' | sudo -S apt install -y php-soap
echo 'senha' | sudo -S apt install -y php-gd
echo 'senha' | sudo -S apt install -y php-xml
echo 'senha' | sudo -S apt install -y php-cli
echo 'senha' | sudo -S apt install -y php-zip
echo 'senha' | sudo -S apt install -y php-bcmath
echo 'senha' | sudo -S apt install -y php-tokenizer
echo 'senha' | sudo -S apt install -y php-json
echo 'senha' | sudo -S apt install -y php-pear
echo 'senha' | sudo -S apt install -y php-pgsql
echo 'senha' | sudo -S apt install -y php-curl
echo 'senha' | sudo -S apt install -y php-mbstring
echo 'senha' | sudo -S a2enmod php 
echo 'senha' | sudo -S service apache2 restart
echo 'senha' | sudo -S apt install -y postgresql
echo 'senha' | sudo -S apt install -y phppgadmin
echo 'senha' | sudo -S apt install -y meld
echo 'senha' | sudo -S apt install -y openssh-server
echo 'senha' | sudo -S apt install -y lm-sensors
echo 'senha' | sudo -S apt install -y install nodejs
echo 'senha' | sudo -S apt install -y install npm
echo 'senha' | sudo -S apt install -y composer
echo 'senha' | sudo -S apt install -y dbeaver-ce
echo 'senha' | sudo -S apt install -y code
echo 'senha' | sudo -S snap install postman
echo 'senha' | sudo -S apt install -y google-chrome-stable
echo 'senha' | sudo -S apt install -y default-jre
echo 'senha' | sudo -S npm install -g @angular/cli
echo 'senha' | sudo -S npm install -g @vue/cli
echo 'senha' | sudo -S npm install -g cli-react
echo 'senha' | sudo  npm audit fix --force

# comanda resolver conflito de dependecias apt-get --fix-broken install 
#sudo -i -u postgres
#psql
#\password postgres
#senha
#sudo service postgresql restart
#sudo -i -u postgres
#CREATE DATABASE baseDados;
#phppgadmin /etc/phppgadmin/config.inc.php
#phppgadmin $conf['extra_login_security'] = false;

