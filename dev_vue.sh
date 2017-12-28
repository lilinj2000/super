#! /bin/sh

docker run -d --rm -i -p 32769:8080 -h vue -v ~:/root lilinj2000/dev:vue "bin/bash"
