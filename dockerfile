FROM mysql
MAINTAINER HYZ "609927332@qq.com"

EVN MYSQL_ROOT_PASSWORD=123456

COPY usr/sql/test.sql usr/sql/test.sql
RUN mysql -h localhost -uroot -p123456
RUN CREATE DATABASE test
RUN exit
RUN mysql -h localhost -uroot -p123456 test < usr/sql/test.sql

EXPOSE 3306