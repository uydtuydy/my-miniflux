FROM miniflux/miniflux:latest

# 使用临时目录存储数据库
ENV DATABASE_URL=sqlite:///tmp/miniflux.db
ENV RUN_MIGRATIONS=1
ENV CREATE_ADMIN=1
ENV ADMIN_USERNAME=admin
ENV ADMIN_PASSWORD=123456
ENV PORT=8080

EXPOSE 8080

CMD ["miniflux"]
