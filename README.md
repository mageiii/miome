# miome

## dockersearch docker私有库查询镜像脚本

* 自动搜索Linux目录/etc/docker/daemon.json中的私有库(insecure-registries)地址，进行dockersearch补全

* 在地址后追加镜像名称，搜索包含输入名称的镜像及其版本

* 如果该私有库有密码权限，则提示输入用户名与密码

## dockerbash docker进入容器bash命令行脚本

* 双TAB键，自动补全运行中容器名称，进行dockerbash命令参数补全

* 执行命令后进入容器命令行
