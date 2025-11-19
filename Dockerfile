FROM miniflux/miniflux:latest

# 设置环境变量
ENV DATABASE_URL=sqlite:///data/miniflux.db
ENV RUN_MIGRATIONS=1
ENV CREATE_ADMIN=1
ENV ADMIN_USERNAME=admin
ENV ADMIN_PASSWORD=123456
ENV PORT=8080
ENV LISTEN_ADDR=0.0.0.0:8080

# 创建数据目录
RUN mkdir -p /data

# 暴露端口
EXPOSE 8080

# 启动命令
CMD ["miniflux"]
