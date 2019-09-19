# 私有库查询脚本使用方法

> 前提：系统安装有bash-completion

> docker的配置文件在/etc/docker/daemon.json的linux版本 类centos或Ubuntu系统

> daemon.json配置有incesure-registries属性，即私有库地址时命令tab补全可用。


1. 在当前项目目录中执行make clean && make all，然后直接执行在release目录中的文件"./dockersearchXXX.install"

2. 重新打开命令行。 

3. 在shell中输入dockersearch命令即可。连续按两次tab键即可补全命令后私有库网址信息。