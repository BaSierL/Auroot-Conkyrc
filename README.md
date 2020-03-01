# Conkys  修改中....
来来回回改了很多遍，就这样吧，挺好的，以前有一个配色很好看的，手贱把硬盘格式化了。emmmmm...
## 截图丨Screenshot
![脚本截图信息](https://gitee.com/auroot/conkyrc/raw/master/conkyrc/icons/desktop.png)

## 来源丨Source
魔改自：https://github.com/9527tech/conkyrc
## 使用丨Usage
以 Arch Linux Gnome为例，此为单独使用！

安装 ```conky-manager``` 这个包主要是要里面的字体！

安装 ```conky-lua``` 和 ```conky-lua-nv``` 选其一！
本套配置文件支持4核心及8核心CPU,每次使用建议重新git,或改变```Processor_number_*(4/8)``` 重命名->```clock_rings.lua```
配套使用,不然会导致 环形监控图不显示!!!
运行`install.sh`,会自动运行配置文件,如没有运行,请```cd $HOME/.config/conkyrc```,检查```startconky,sh```有没有执行权限.
### Gitee 国内的git
- ``` yaourt -S conky-manager conky-lua```
- ``` git clone https://gitee.com/auroot/conkyrc.git ~/.config/conkys```
- ```cd conkyrc```
-```chmod +x install.sh | sh install.sh```
### Github
- ``` git clone https://github.com/BaSierL/Auroot-Conkyrc.git ~/.config/conkys```
- ```cd conkyrc```
-```chmod +x install.sh | sh install.sh```

以上执行```install.sh```完毕后，会自动将:```sh ~/.config/conkyrc/startconky.sh &``` 写入-> source ~/.xprofile 开机自动启动.
开机后 延迟8秒启动!


## 图标丨Icons
### 桌面图标文件在 ```icons/conky.png```

![脚本截图信息](https://gitee.com/auroot/conkyrc/raw/master/conkyrc/icons/conky.png)

创建图标必不可少的文件```icons/conky-auroot.desktop```
```cd ./conkyrc/icons
   cp conky-auroot.desktop $HOME/.local/share/applications/
```
## startconky.sh 详解
```shell
killall conky 2> /dev/null 
sleep 8 #启动的时间（s）；对于Gnome或KDE使用6~20，对于Xfce/LXDE等使用较少的时间,也可以注释.
#-q |  --quiet        以“安静模式”运行Conky（即无输出）
#-d | --daemonize     Daemonize Conky，又名叉到背景

conky -c ~/.config/conkyrc/rings --daemonize --quiet &     # 主环
#sleep 5 这里如果"环"显示不正常,在这里设置时间5秒缓冲时间,避免环断开.
conky -c ~/.config/conkyrc/cpu  --daemonize --quiet &      # CPU
conky -c ~/.config/conkyrc/gpu  --daemonize --quiet &      # Nvidia显卡  没有测试AMD显卡,如不能正常显示可以注释行.
conky -c ~/.config/conkyrc/mem  --daemonize --quiet &      # 内存
conky -c ~/.config/conkyrc/disk  --daemonize --quiet &     # 硬盘
conky -c ~/.config/conkyrc/network  --daemonize --quiet &  # 网络
conky -c ~/.config/conkyrc/clock  --daemonize --quiet &    # 时间
conky -c ~/.config/conkyrc/Linux_logo  --daemonize --quiet &   #Linux开机时间及名称
```
## 网络丨Network 

网络模块可以同时显示 有线网 和 无线网 ，同时显示网速（默认全显示）。

如果不需要显示 WIFI网络，修改network 将此删除或注释```#``` ：

![脚本截图信息](https://images.gitee.com/uploads/images/2020/0219/223112_1ce5a0a2_5700645.png)

## 局限丨Limit

在此环境下测试（正常运行）：

Test under this environment(run normally):

```shell
OS: Arch Linux x86_64
Host: MACHENIKE F117 F1K Notebook
Kernel: 5.1.15-arch1-1-ARCH
Packages: 970 (pacman)
Shell: zsh 5.7.1 
Resolution: 1920x1080
DE: KDE 
WM: KWin
CPU: Intel i7-7700HQ (8) @ 3.800GHz
GPU: Intel HD Graphics 630 
GPU: NVIDIA GeForce GTX 1050 Ti Mobile
Memory: 2948MiB / 15959MiB
```
## 4核心示意图
![脚本截图信息](https://gitee.com/auroot/conkyrc/raw/master/conkyrc/icons/desktop2.png)

## EOF


