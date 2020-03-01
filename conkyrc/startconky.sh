#!/bin/bash
#--------------------------------------------------------------------------------------------------------
killall conky 2> /dev/null 
sleep 8 #启动的时间（s）；对于Gnome或KDE使用6~20，对于Xfce/LXDE等使用较少的时间,也可以注释.
#-q |  --quiet        以“安静模式”运行Conky（即无输出）
#-d | --daemonize     Daemonize Conky，又名叉到背景
#-b | --double-buffer 使用双缓冲（消除“闪烁”）
#-f | --font= FONT     要使用的字体

conky -c ~/.config/conkyrc/rings --daemonize --quiet &  # 主环
#sleep 5 这里如果"环"显示不正常,在这里设置时间5秒缓冲时间,避免环断开.
conky -c ~/.config/conkyrc/cpu  --daemonize --quiet &     # CPU
conky -c ~/.config/conkyrc/gpu  --daemonize --quiet &     # Nvidia显卡  没有测试AMD显卡,如不能正常显示可以注释行.
conky -c ~/.config/conkyrc/mem  --daemonize --quiet &     # 内存
conky -c ~/.config/conkyrc/disk  --daemonize --quiet &    # 硬盘
conky -c ~/.config/conkyrc/network  --daemonize --quiet &  # 网络
conky -c ~/.config/conkyrc/clock  --daemonize --quiet &    # 时间
conky -c ~/.config/conkyrc/Linux_logo  --daemonize --quiet &   #Linux开机时间及名称
#conky -c ~/.config/conkys/notes &
#
#--------------------------------------------------------------------------------------------------------
