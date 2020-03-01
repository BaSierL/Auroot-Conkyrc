# Conkys  修改中....
来来回回改了很多遍，就这样吧，挺好的，以前有一个配色很好看的，手贱把硬盘格式化了。emmmmm...
## 截图丨Screenshot
![脚本截图信息](https://github.com/BaSierL/Auroot-Conkyrc/raw/master/conkyrc/icons/desktop.png)

## 来源丨Source
魔改自：https://github.com/9527tech/conkyrc
## 使用丨Usage
以 Arch Linux Gnome为例，此为单独使用！

安装 ```conky-manager``` 这个包主要是要里面的字体！

安装 ```conky-lua``` 和 ```conky-lua-nv``` 选其一！

- ``` yaourt -S conky-manager conky-lua```
- ``` git clone https://github.com/BaSierL/conkys.git ~/.config/conkys```
- ``` cd ~/.config/conkys```

- ``` chmod +x startconky.sh | sh startconky.sh```

- ``` cd conkys```
- ``` ./install.sh```

以上执行完毕后，在终端运行使用 source ~/.xprofile 或重新登录桌面环境来展示这个conky样式.


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


