Purple='\033[0;35m'
NC='\033[0m' # No Color

printf "${Purple}*************************************************************${NC} \n"
echo "   desligar ao encerrar o processo?"
echo "   digite: sim para desligar ao termino do processo"
echo "   digite: não para nãp desligar ao termino do processo"
printf "${Purple}*************************************************************${NC} \n"
read varname

 sudo  apt-get update
 sudo  apt-get upgrade -y
 sudo  apt-get autoremove -y
 sudo  apt-get autoclean

if [ "$varname" == "sim" ]; then
shutdown
fi    

