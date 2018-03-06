#! /bin/sh

. func.sh

docker run --rm -t -i -d -h ubuntu16.04 -v $v_path:/root lilinj2000/dev:ubuntu16.04

