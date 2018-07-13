金蝶eas容器化
-------------------------------

# 用法

```
# build docker镜像hyperhq/kingdee-server:x86
./build.sh

# 运行容器
./run.sh

# 访问web
http://host_ip:10060
```

# 关键文件

```
配置文件
/usr/eas705s/eas/server/bin/set-server-env.sh

服务启动脚本
/usr/eas705s/eas/admin/adminserver.sh
```

# FAQ

## 问题1: docker容器根分区缺省10GB，金蝶的文件超过10GB，导致build docker镜像失败

```
解决：
dockerd增加dm.basesize参数，指定根分区大小为20GB

步骤：
1.修改 /usr/lib/systemd/system/docker.service, 在dockerd命令行后增加
--storage-opt dm.basesize=20G

2.重建/var/lib/docker，并重启docker服务
$ sudo service docker stop
$ sudo rm -rf /var/lib/docker
$ sudo service docker start
```