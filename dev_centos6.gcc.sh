#! /bin/sh

docker run -d --rm -i \
	-h centos6 \
	-e PS1="[dev@centos6.gcc \w]\$ " \
	-v //c/docker:/root \
	lilinj2000/dev:centos6.gcc

	# -v //c/docker/src/super/passwd:/etc/passwd:ro \
	# -v //c/docker/src/super/group:/etc/group:ro \
	# -u 1000:1000 \
	# -w //home/llj \
	# -e USER=llj \
	# -e HOME=//home/llj \
	
	
