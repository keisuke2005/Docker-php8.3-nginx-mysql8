FROM mysql:8.0
ENV TZ=Asia/Tokyo
COPY ./docker/db/my.conf /etc/my.conf
COPY ./docker/db/init-db.sql /docker-entrypoint-initdb.d/
