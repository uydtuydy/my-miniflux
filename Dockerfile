FROM miniflux/miniflux:latest

# 使用文件数据库而不是内存数据库
ENV DATABASE_URL=sqlite:///data/miniflux.db
ENV RUN_MIGRATIONS=1
ENV CREATE_ADMIN=1
ENV ADMIN_USERNAME=admin
ENV ADMIN_PASSWORD=123456
ENV PORT=8080

# 创建数据目录
RUN mkdir -p /data

EXPOSE 8080

CMD ["miniflux"]
