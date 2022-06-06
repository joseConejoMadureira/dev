# bash para instalação de uma maquina dev.
# use comando bash dev.sh para inciar a instalação
# senha é senha sudo/root de sua maquina
# rodar script apartir da pasta documentos
# nao rodar o scrit no usu sudo/root 
###################################repository/vscode#####################################
echo 'senha' | sudo -S apt-get update
echo 'senha' | sudo -S apt-get upgrade
echo 'senha' | sudo -S add-apt-repository ppa:ondrej/php
echo 'senha' | sudo -S add-apt-repository ppa:deadsnakes/ppa
echo 'senha' | sudo -S add-apt-repository ppa:serge-rider/dbeaver-ce
echo 'senha' | sudo -S sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
echo 'senha' | sudo -S wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo 'senha' | sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
echo 'senha' | sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
echo 'senha' | sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
echo 'senha' | sudo rm -f packages.microsoft.gpg
echo 'senha' | sudo -S apt-get update

######################### feramentas ############################################

echo 'senha' | sudo -S apt install -y  snapd
echo 'senha' | sudo -S apt install -y default-jre
echo 'senha' | sudo -S apt install -y software-properties-common
echo 'senha' | sudo -S apt install -y  code
echo 'senha' | sudo -S apt install -y microsoft-edge-stable
echo 'senha' | sudo -S apt install -y meld
echo 'senha' | sudo touch /home/diff.py
echo 'senha' | sudo  chmod 777 /home/diff.py
echo 'senha' | sudo echo  "#!/usr/bin/python import sys import os os.system(‘meld “%s” “%s”’ % (sys.argv[2], sys.argv[5]))" > /home/diff.py
echo 'senha' | sudo  chmod +x /home/diff.py
git config --global diff.external /home/diff.py
git config --global merge.tool meld
git config --global pull.rebase false
echo 'senha' | sudo -S apt install -y openssh-server
echo 'senha' | sudo -S apt install -y lm-sensors
echo 'senha' | sudo -S apt install -y dbeaver-ce
echo 'senha' | sudo -S  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo 'senha' | sudo dpkg -i google-chrome-stable_current_amd64.deb
echo 'senha' | sudo rm google-chrome-stable_current_amd64.deb
echo 'senha' | sudo -S  wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash


#############################php/python/pg###########################################################

echo 'senha' | sudo -S apt install -y python3
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
echo 'senha' | sudo -S apt install -y php-pgsql
echo 'senha' | sudo -S apt install -y php-curl
echo 'senha' | sudo -S apt install -y php-mbstring
echo 'senha' | sudo -S a2enmod php 
echo 'senha' | sudo -S service apache2 restart
echo 'senha' | sudo -S apt install -y postgresql
echo 'senha' | sudo -S apt install -y phppgadmin
echo 'senha' | sudo -S apt install -y composer

########################### npm/node/angular/vue/react###################################

echo 'senha' | sudo -S apt install -y npm
echo 'senha' | sudo -S npm  cache clean -f
echo 'senha' | sudo -S npm install --location=global npm@latest
echo 'senha' | sudo -S npm  cache clean -f
echo 'senha' | sudo -S npm install -g n
echo 'senha' | sudo -S sudo n stable
echo 'senha' | sudo -S npm install -g @angular/cli
echo 'senha' | sudo -S npm install -g @vue/cli
echo 'senha' | sudo -S npm install -g cli-react
echo 'senha' | sudo  npm audit fix --force

########################### atualizacao e limpeza ###################################

echo 'senha' | sudo -S apt-get update
echo 'senha' | sudo -S apt-get --fix-broken install
echo 'senha' | sudo -S apt-get upgrade
echo 'senha' | sudo -S apt-get autoremove
echo 'senha' | sudo -S apt-get autoclean

###########################configuracao phppgadmin e git config senha e base dados###################################
Purple='\033[0;35m'
NC='\033[0m' # No Color

printf " ${Purple}*****************configuracao phppgadmin senha e base dados************************${NC} \n"

echo 'sudo -i -u postgres'
echo 'psql'
echo '\password postgres'
echo 'senha'
echo 'CREATE DATABASE baseDados;'

echo 'config phppgadmin  $conf['extra_login_security'] para false'
echo 'code /etc/phppgadmin/config.inc.php'
echo '$conf['extra_login_security'] = false;'
echo 'sudo service postgresql restart'
echo 'comando resolver conflito de dependecias: apt-get --fix-broken install'


printf " ${Purple}***git config***${NC} \n" 

echo 'git config --global user.email you@example.com'
echo 'git config --global user.name Your Name'

printf " ${Purple}***git config***${NC} \n" 

printf " ${Purple}*****************configuracao phppgadmin senha e base dados ************************${NC} \n" 
