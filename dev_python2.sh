#! /bin/sh

docker run -d --rm -i -h python2 -p 32768:8080 -v ~:/root python:2.7 /bin/bash
