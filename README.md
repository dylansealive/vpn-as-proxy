# 把VPN转换为代理

通过docker，这个项目把VPN连接为代理。特点：

- 支持HTTP/HTTPS

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
curl -x 127.0.0.1:8888 https://cip.cc
```
代理服务器跑起来之后，给需要走内网的应用设置HTTP和HTTPS代理到`http://localhost:8888`。

## 参考原项目
https://github.com/ddadaal/vpn-as-proxy
