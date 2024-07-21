#!/bin/bash

# 检查 OpenVPN 配置文件是否存在
if [ ! -f /home/client.ovpn ]; then
  echo "Error: /home/client.ovpn not found."
  exit 1
fi

# 启动 tinyproxy
tinyproxy &

# 启动 OpenVPN
openvpn /home/client.ovpn
