#! /bin/sh

docker run -d --rm -i -h angular -p 32780:4200 -v ~:/root lilinj2000/dev:angular /bin/bash
