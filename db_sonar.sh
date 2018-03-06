#! /bin/sh

docker run -d --rm --name db_sonar \
	-e MYSQL_ROOT_PASSWORD=sonar \
	-e TZ=Asia/Shanghai \
	-v ~/mysql/sonar:/var/lib/mysql \
	-p 32768:3306 \
	mysql:5.7
	
