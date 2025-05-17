FROM registry.cn-hangzhou.aliyuncs.com/jeecgdocker/mysql:8.0.19

MAINTAINER jeecgos@163.com

ENV TZ=Asia/Tokyo

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./tables_nacos.sql /docker-entrypoint-initdb.d

#COPY ./jeecgboot-mysql-5.7.sql /docker-entrypoint-initdb.d
COPY ./jeecgboot-mysql-5.7-ja_JP2.sql /docker-entrypoint-initdb.d

COPY ./tables_xxl_job.sql /docker-entrypoint-initdb.d