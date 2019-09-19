#! /bin/sh

docker run -d --rm -i \
	-h angular \
	-e PS1="[dev@angular \w]\$ " \
	-v //c/docker:/root \
	lilinj2000/dev:angular


#	-u 1000:1000 \
#	-w /home/llj \
#	-e USER=llj \
#	-e HOME=/home/llj \
#	-p 32780:4200 \
#	-v /etc/passwd:/etc/passwd:ro \
#	-v /etc/group:/etc/group:ro \

