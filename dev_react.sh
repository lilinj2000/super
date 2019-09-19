#! /bin/sh

docker run -d --rm -i \
	-h angular \
	-e PS1="[dev@react \w]\$ " \
	-v //c/docker:/root \
	-p 3000 \
	lilinj2000/dev:react

