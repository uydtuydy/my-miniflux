FROM miniflux/miniflux:latest

# 使用正确的 SQLite 连接字符串格式
ENV DATABASE_URL=sqlite:////tmp/miniflux.db
ENV RUN_MIGRATIONS=1
ENV CREATE_ADMIN=1
ENV ADMIN_USERNAME=admin
ENV ADMIN_PASSWORD=123456
ENV PORT=8080

EXPOSE 8080

CMD ["miniflux"]
