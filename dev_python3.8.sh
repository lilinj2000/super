#! /bin/sh

docker run -d --rm -i \
    -h python3.8 \
    -v //c/Users/linj_/Documents/GitHub:/root/GitHub \
	-v //c/Users/linj_/Documents/GitLab:/root/GitLab \
    lilinj2000/dev:python3.8

# -p 32768:8080 -v ~:/root python:2.7 /bin/bash
