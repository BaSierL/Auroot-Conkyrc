#!/bin/bash
killall conky 2> /dev/null 
sleep 8 #time (in s) for the DE to start; use ~20 for Gnome or KDE, less for Xfce/LXDE etc
#-q |  --quiet        以“安静模式”运行Conky（即无输出）
#-b | --double-buffer 使用双缓冲（消除“闪烁”）
#-d | --daemonize     Daemonize Conky，又名叉到背景
#-f | --font= FONT     要使用的字体

conky -c ~/.config/conkyrc/rings --daemonize --quiet &  #动态CPU
# the main conky with rings
#sleep 1 #time for the main conky to start; needed so that the smaller ones draw above not below (probably can be lower, but we still have to wait 5s for the rings to avoid segfaults)
conky -c ~/.config/conkyrc/cpu  --daemonize --quiet &     #cpu 
conky -c ~/.config/conkyrc/mem  --daemonize --quiet &     #内存
conky -c ~/.config/conkyrc/disk  --daemonize --quiet &    #硬盘
conky -c ~/.config/conkyrc/network  --daemonize --quiet &  #网络
conky -c ~/.config/conkyrc/gpu  --daemonize --quiet &     #Gpu监控
conky -c ~/.config/conkyrc/clock  --daemonize --quiet &   #时间
conky -c ~/.config/conkyrc/Linux_logo  --daemonize --quiet &   #Linux开机时间及名称
#conky -c ~/.config/conkys/gpu -d &
#conky -c ~/.config/conkys/notes &
