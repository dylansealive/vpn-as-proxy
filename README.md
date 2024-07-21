# 把VPN转换为代理

通过docker，这个项目把openVPN 连接为透明代理

# 介绍

tinyproxy 使用 tinyproxy 代理，http支持

squid 使用squid代理，https支持

## 1. 构建镜像

```bash
docker build -t vpnproxy .
```

## 2. 运行

`docker-compose.yml` 文件中 volumes 中 `ovpn配置文件`指定为自己的文件。

```bash
docker-compose up -d
```

## 3. 配置代理

```shell
#tinyproxy
curl -x 127.0.0.1:8888 https://cip.cc
#squid
curl -x 127.0.0.1:3128 https://www.google.com
```
代理服务器跑起来之后，给需要走内网的应用设置HTTP和HTTPS代理到`http://localhost:8888`。

## 参考原项目
https://github.com/ddadaal/vpn-as-proxy

[squid配置文件](https://hub.docker.com/r/ubuntu/squid)