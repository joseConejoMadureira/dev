# bash para instala\u00e7\u00e3o de uma maquina dev.
# use comando bash dev.sh para inciar a instala\u00e7\u00e3o
# rodar script apartir da pasta documentos
#  rodar o scrit como sudo/root
Purple='\033[0;35m'
NC='\033[0m' # No Color

printf "${Purple}*************************************************************${NC} \n"
echo "   desligar ao encerrar o processo?"
echo "   digite: sim para desligar ao termino do processo"
echo "   digite: não para nãp desligar ao termino do processo"
printf "${Purple}*************************************************************${NC} \n"
read varname

###################################repository/vscode#####################################
 sudo  apt-get update 
 sudo  apt-get upgrade -y
 sudo echo  -S | add-apt-repository ppa:ondrej/php
 sudo echo  -S | add-apt-repository ppa:deadsnakes/ppa
 sudo echo  -S |  add-apt-repository ppa:serge-rider/dbeaver-ce
 sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
 sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
 sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
 sudo rm -f packages.microsoft.gpg
 wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
 sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

 
 sudo  apt-get update

######################### feramentas ############################################

 sleep 3

 sudo  apt install -y  snapd
 sudo  apt install -y default-jre
 sudo  apt install -y software-properties-common
 sudo  apt install -y  code
 sudo  apt install -y meld
 sudo echo  "#!/usr/bin/python import sys import os os.system(\u2018meld \u201c%s\u201d \u201c%s\u201d\u2019 % (sys.argv[2], sys.argv[5]))" > /home/diff.py
 sudo  chmod +x /home/diff.py
 git config --global diff.external /home/diff.py
 git config --global merge.tool meld
 git config --global pull.rebase false

sudo  apt install -y openssherver
sudo  apt install -y lmensors
# sudo  apt install -y dbeaver-ce
sudo  apt install -y flameshot
sudo apt install -y jenkins
sudo apt install -y mysql-server
sudo apt install -y  bsdgames
#############################php/python/pg###########################################################
 sleep 3

 sudo  apt install -y python3
 sudo  apt install -y php
 sudo  apt install -y curl
 sudo  apt install -y apache2
 sudo  apt install -y libapache2-mod-php
 sudo  apt install -y php-xmlrpc
 sudo  apt install -y phpoap
 sudo  apt install -y php-gd
 sudo  apt install -y php-xml
 sudo  apt install -y php-cli
 sudo  apt install -y php-zip
 sudo  apt install -y php-bcmath
 sudo  apt install -y php-tokenizer
 sudo  apt install -y php-json
 sudo  apt install -y php-pgsql
 sudo  apt install -y php-curl
 sudo  apt install -y php-mbstring
 sudo  a2enmod php 
 sudo  service apache2 restart
 sudo  apt install -y postgresql
 sudo  apt install -y phppgadmin
 sudo  apt install -y composer
 sudo  apt install -y php-xdebug
 sudo  apt install -y php-mysql

########################### npm/node/angular/vue/react###################################
 sleep 3

 sudo  apt install -y npm 
 sudo  npm  cache clean -f
 sudo  npm install --location=global npm@latest
 sudo  npm  cache clean -f
 sudo  npm install -g  n
 sudo  n stable
 sudo  npm install --location=global @angular/cli
 sudo  npm install --location=global @vue/cli
 sudo  npm install --location=global cli-react
 sudo  npm install --location=global json-server
 sudo  npm install --location=global typescript
 sudo  npm install --location=global yarn
 sudo npm install --location=global newman
 sudo npm install --location=global gulp-cli
 sudo  npm audit fix --force

########################### docker ###################################
sudo apt update
sudo apt install -y  apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo echo  -S | add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install -y docker-ce
sudo apt install -y docker-compose

########################### atualizacao e limpeza ###################################

 sleep 3

 sudo  apt-get update
 sudo  apt-get --fix-broken install -y
 sudo  apt-get upgrade -y
 sudo  apt-get autoremove
 sudo  apt-get autoclean

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

BBlue='\033[1;34m' 

printf " ${BBlue}***git config***${NC} \n" 

echo   'git config --global user.email you@example.com'
echo   'git config --global user.name Your Name'
echo '  git config --global diff.external /home/diff.py'
echo   'git config --global merge.tool meld'
echo   'git config --global pull.rebase false'

printf " ${BBlue}***git config***${NC} \n" 

printf " ${Purple}*****************configuracao phppgadmin senha e base dados ************************${NC} \n" 


if [ "$varname" == "sim" ]; then
shutdown
fi    
