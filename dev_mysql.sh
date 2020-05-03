#! /bin/sh

docker run -d --rm --name mysql \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-e TZ=Asia/Shanghai \
	mysql:5.7

# -p 3306 
    # -v ~/mysql/sonar:/var/lib/mysql 