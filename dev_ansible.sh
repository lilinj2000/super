#! /bin/sh

docker run -d --rm -i -h ansible -v ~:/root williamyeh/ansible:centos7-onbuild /bin/bash
