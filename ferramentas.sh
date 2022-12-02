Purple='\033[0;35m'
NC='\033[0m' # No Color

printf "${Purple}*************************************************************${NC} \n"
echo "   desligar ao encerrar o processo?"
echo "   digite: sim para desligar ao termino do processo"
echo "   digite: não para não desligar ao termino do processo"
printf "${Purple}*************************************************************${NC} \n"
read varname

###################################repository/vscode#####################################
 sudo  apt-get update 
 sudo  apt-get upgrade -y
 sudo echo  -S | add-apt-repository ppa:ondrej/php
 sudo echo  -S | add-apt-repository ppa:deadsnakes/ppa
 sudo echo  -S | add-apt-repository ppa:serge-rider/dbeaver-ce
 sudo echo  -S | sudo add-apt-repository universe 
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
 sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
 sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
 sudo rm -f packages.microsoft.gpg
 wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
 sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
 

 sudo echo -S |  add-apt-repository ppa:jonmagon/crow-translate 
 sudo echo -S | add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
 wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list

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
sudo snap install dbeaver-ce
sudo  apt install -y flameshot
sudo apt install -y jenkins
sudo apt install -y mysql-server
sudo apt install -y  bsdgames
sudo apt install -y  hardinfo
sudo apt install -y libfuse2
sudo snap install postman
sudo snap install  discord
sudo snap install mysql-workbench-community
sudo snap install laravel-docs-app --edge
sudo snap install obs-studio
sudo apt install -y  gdebi-core
sudo apt install -y  makepasswd
sudo apt install -y qt5-qmake 
sudo apt install -y qtbase5-dev-tools 
sudo apt install -y qttools5-dev-tools
sudo apt install -y crow-translate
sudo apt install -y  sqlite3
sudo snap install joplin-desktop
sudo apt install -y wine-stable
sudo apt install -y terraform
touch ~/.bashrc
terraform -install-autocomplete
sudo apt install zsh -y
sudo apt-get install -y  libssl1.1
sudo apt-get install -y mongodb-org
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
sudo  npm install --location=global bower
sudo  npm install --location=global webpack
sudo  npm install --location=global live-server
sudo  npm audit fix --force
########################### docker ###################################
sudo apt update
sudo apt install -y  apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo echo  -S | add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install -y docker-ce
sudo apt install -y docker-compose

########################## aws cli  #######################################

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

######################### azure cli  ######################################

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

########################## github cli ################################
sudo apt  install -y  gh

########################### opengl ##################################

sudo apt install -y libqt5opengl5
sudo apt install -y cmake pkg-config
sudo apt install -y mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev
sudo apt install -y libglew-dev libglfw3-dev libglm-dev
sudo apt install -y libao-dev libmpg123-dev

########################### atualizacao e limpeza ###################################

 sleep 3

 sudo  apt-get update
 sudo  apt-get --fix-broken install -y
 sudo  apt-get upgrade -y
 sudo  apt-get autoremove
 sudo  apt-get autoclean

###########################configuracao phppgadmin e git config senha e base dados###################################

if [ "$varname" == "sim" ]; then
shutdown
fi    


