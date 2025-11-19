#!/bin/bash

# 下载最新版 Miniflux
wget -O miniflux https://github.com/miniflux/v2/releases/latest/download/miniflux-linux-amd64
chmod +x miniflux

# 使用内存数据库（简化）
export DATABASE_URL=:memory:
export RUN_MIGRATIONS=1
export CREATE_ADMIN=1
export ADMIN_USERNAME=admin
export ADMIN_PASSWORD=123456
export PORT=$PORT

# 启动
./miniflux
