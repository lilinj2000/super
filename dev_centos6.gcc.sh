#! /bin/sh

docker run -d --rm -i \
	-h centos6 \
	-u 1000:1000 \
	-w //home/llj \
	-e USER=llj \
	-e HOME=//home/llj \
	-e PS1="[dev@centos6.gcc \w]\$ " \
	-v //c/docker:/home/llj \
	-v //c/docker/src/super/passwd:/etc/passwd:ro \
	-v //c/docker/src/super/group:/etc/group:ro \
	lilinj2000/dev:centos6.gcc

	
	
