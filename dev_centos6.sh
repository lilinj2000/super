#! /bin/sh

. func.sh

docker run --rm -t -i -d -h centos6 -v $v_path:/root lilinj2000/dev:centos6 /bin/bash

