#!/bin/bash
#!/bin/bash
#
null="/dev/null"
#------------- 颜色
r='\033[1;31m'	#---红
g='\033[1;32m'	#---绿
y='\033[1;33m'	#---黄
b='\033[1;36m'	#---蓝
w='\033[1;37m'	#---白
rw='\033[1;41m'    #--红白
wg='\033[1;42m'    #--白绿
ws='\033[1;43m'    #--白褐
wb='\033[1;44m'    #--白蓝
wq='\033[1;45m'    #--白紫
wa='\033[1;46m'    #--白青
wh='\033[1;46m'    #--白灰
h='\033[0m'	   #---后缀
bx='\033[1;4;36m'  #---蓝 下划线
#-------------
DISK_ROOT=$(df | grep "\s/$" | cut -f 1 -d " ")
DISTRIBUTOR=$(/usr/bin/lsb_release -a | grep "Distributor ID:" | awk -F " " '{print $3}')
NETWORK_A=$(ip link | grep UP | grep BROADCAST | grep -v CARRIER | grep -v LOOP | cut -f 2 -d ":" | cut -f 2 -d " " | sed -n "1p")
NETWORK_B=$(ip link | grep UP | grep BROADCAST | grep -v CARRIER | grep -v LOOP | cut -f 2 -d ":" | cut -f 2 -d " " | sed -n "2p")
CONKYRC_DIR=$HOME/.config/conkyrc
CPU_NUMBER=$(grep 'processor' /proc/cpuinfo | sort -u | wc -l)
#
clear;
ECHOA=`echo -e "${w}    _             _       _     _                  ${h}"`  
ECHOB=`echo -e "${g}   / \   _ __ ___| |__   | |   (_)_ __  _   ___  _        ${h}"` 
ECHOC=`echo -e "${b}  / _ \ | '__/ __| '_ \  | |   | | '_ \| | | \ \/ /         ${h}"` 
ECHOD=`echo -e "${y} / ___ \| | | (__| | | | | |___| | | | | |_| |>  <           ${h}"`  
ECHOE=`echo -e "${r}/_/   \_\_|  \___|_| |_| |_____|_|_| |_|\__,_/_/\_\                ${h}"`
#echo -e "$ECHOA\n$ECHOB\n$ECHOC\n$ECHOD\n$ECHOE" | lolcat 2> ${null} || echo -e "$ECHOA\n$ECHOB\n$ECHOC\n$ECHOD\n$ECHOE"
echo -e "$ECHOA\n$ECHOB\n$ECHOC\n$ECHOD\n$ECHOE" || echo -e "$ECHOA\n$ECHOB\n$ECHOC\n$ECHOD\n$ECHOE"
echo -e "#=======================================================#"
echo -e "# ${g}Name:           Arch Linux Custom script${h}"
echo -e "# ${g}Version:        V2.0${h}"
echo -e "# ${g}Author:         Basierl QQ2763833502${h}"
echo -e "# ${g}Copyright:	  ${wd}https://gitee.com/auroot/conkys${h}"
echo -e "#=======================================================#"
#
read -p ":: Install Conky[Y/y] Exit [N/n]? :" instructions
echo;
#------Install 
if [[ $instructions == Y || y || Install || install || INSTALL ]];then
	if [ -d "${HOME}/.config/conkyrc" ]; then
     		mkdir -p ${HOME}/.config/conkyrc
	fi 
	sed -i "s/INTERFACE_A/${NETWORK_A}/g" conkyrc/network && echo -e "${g} == Configure Conkyrc Network device One/1.${h}"
	sed -i "s:DistID:${DISTRIBUTOR}:g" conkyrc/Linux_logo && echo -e "${g} == Configure Conkyrc Linux_logo.${h}"
	sed -i "s:ROOT_DISK:${DISK_ROOT}:g" conkyrc/disk && echo -e "${g} == Configure Conkyrc Disk.${h}"
	sed -i "s:CRL_FILE:${CONKYRC_DIR}/clock_rings.lua:g" conkyrc/rings && echo -e "${g} == Configure Conkyrc Rings.${h}"
#
	if [ -z ${NETWORK_B} ] ; then
		echo -e "${y} == Not found Network device Two/2. (Negligible)${h}" 
		sed -i '68,73d' conkyrc/network
	else
		sed -i "s/INTERFACE_B/$NETWORK_B/g" conkyrc/network
	fi
	if [[ ${CPU_NUMBER} = 4 ]] ; then
		echo -e "${g} == Processor Number [4]. Changing files rings. "
		mv conkyrc/clock_rings.lua conkyrc/Processor_number_8
		mv conkyrc/Processor_number_4  conkyrc/clock_rings.lua
	fi
#---cp
	cp -rf conkyrc $HOME/.config/conkyrc   #copy directory
		echo -e "${g} == copying conkyrc to $HOME/.config/conkyrc${h}"
	echo "sh ~/.config/conkyrc/startconky.sh &" >> $HOME/.xprofile   #Auto Run
		echo -e "${g} == configuer $HOME/.xprofile.${h}"
	echo -e "${wg} == Open Conky --Auroot_conkyrc_themes.${h}"
	sh $CONKYRC_DIR/startconky.sh	#Open conky
	echo;
	exit 0;
fi
#------Exit
if [[ $instructions == N || n || quit || QUIT || * ]];then
	echo -e "${b}EXIT .${h}"
	#clear;
	exit 127
fi



