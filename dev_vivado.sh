#! /bin/sh

docker run -d --rm -i \
	-h vivado \
	-e PS1="[dev@vivado \w]\$ " \
	-v //c/Xilinx:/Xilinx \
	-u root \
	lilinj2000/vivado-docker-centos bash

	# -v //c/docker/src/super/passwd:/etc/passwd:ro \
	# -v //c/docker/src/super/group:/etc/group:ro \
	# -u 1000:1000 \
	# -w //home/llj \
	# -e USER=llj \
	# -e HOME=//home/llj \
	
	
