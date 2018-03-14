#! /bin/sh

docker run -d --rm -i \
	-h centos6 \
	-u 1000:1000 \
	-w /home/llj \
	-e HOME=/home/llj \
	-e PS1="[dev@centos6 \w]\$ " \
	-v ~:/home/llj \
	lilinj2000/dev:centos6
