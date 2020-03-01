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
### Gitee
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

Now, you can run source ～/.xprofile in terminal or re-login desktop environment to display this conky style as shown in the following screenshot

## 图标丨Icons
### 桌面图标文件在 ```icons/conky.png```

![脚本截图信息](https://gitee.com/auroot/conkyrc/raw/master/conkyrc/icons/conky.png)

创建图标必不可少的文件```icons/conky-basierl.desktop```
```cd ./conkys/icons
   cp conky-basierl.desktop /usr/share/applications
```
## 显卡温度丨Nvidia 

修改cpu 将此注释```#```删除（默认不显示） ：

![脚本截图信息](https://gitee.com/auroot/conkyrc/raw/master/conkyrc/icons/cpu_g.png)

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

## EOF


