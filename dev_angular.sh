#! /bin/sh

docker run -d --rm -i \
	-h angular \
	-u 1000:1000 \
	-w /home/llj \
	-e USER=llj \
	-e HOME=/home/llj \
	-e PS1="[dev@angular \w]\$ " \
	-p 32780:4200 \
	-v ~:/home/llj \
	-v /etc/passwd:/etc/passwd:ro \
	-v /etc/group:/etc/group:ro \
	lilinj2000/dev:angular \
	/bin/bash

