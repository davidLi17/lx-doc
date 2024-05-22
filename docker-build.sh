#!/bin/bash

mvn -DskipTests -U clean package

mkdir -p /usr/logs/

docker build -t lx-doc:1.0 .

# 你可以拉取github上的代码进行构建
# 这里的 ARGS 参数可以直接写在 lx-core/src/main/resources/application.yml 配置文件里，避免把密码登参数直接写在命令行中
docker run -dit -p 9222:9222 -v /usr/logs/:/usr/logs/ -v /usr/attament/:/usr/attament/  -e ARGS='--file.upload.path=/usr/attament --log.home=/usr/logs --loglevel=INFO --spring.datasource.druid.password=xx --spring.datasource.druid.url=jdbc:mysql://ip:3306/lx-doc?useUnicode=true&characterEncoding=utf8&autoReconnect=true&allowMultiQueries=true&useSSL=false&zeroDateTimeBehavior=convertToNull --spring.datasource.druid.username=username --spring.redis.password=xxx --spring.redis.sentinel.master=publicredis --spring.redis.sentinel.nodes=ip:26379,ip:26379,ip:26379' --name lx-doc lx-doc:1.0

