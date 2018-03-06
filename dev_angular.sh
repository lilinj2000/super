#! /bin/sh

. func.sh

docker run -d --rm -i -h angular -p 32780:4200 -v $v_path:/root lilinj2000/dev:angular /bin/bash
