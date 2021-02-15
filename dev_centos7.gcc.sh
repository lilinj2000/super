#! /bin/sh

docker run -d --rm -i \
	-h centos7 \
	-e PS1="[dev@centos7.gcc \w]\$ " \
	-v //c/Users/linj_/Documents/GitHub:/root \
	lilinj2000/dev:centos7.gcc

	# -v //c/docker/src/super/passwd:/etc/passwd:ro \
	# -v //c/docker/src/super/group:/etc/group:ro \
	# -u 1000:1000 \
	# -w //home/llj \
	# -e USER=llj \
	# -e HOME=//home/llj \
	
	
