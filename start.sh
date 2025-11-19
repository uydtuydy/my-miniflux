#!/bin/bash

# 下载 Miniflux
wget https://github.com/miniflux/v2/releases/download/2.0.45/miniflux-linux-amd64 -O miniflux
chmod +x miniflux

# 创建数据目录
mkdir -p data

# 设置环境变量
export DATABASE_URL=sqlite:///home/railway/data/miniflux.db
export RUN_MIGRATIONS=1
export CREATE_ADMIN=1
export ADMIN_USERNAME=admin
export ADMIN_PASSWORD=123456
export PORT=8080
export LISTEN_ADDR=0.0.0.0:$PORT

# 启动 Miniflux
./miniflux
