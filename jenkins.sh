#! /bin/sh

docker run -d --rm -i -u root \
	-v ~/jenkins:/var/jenkins_home \
	-p 32770:8080 \
        -v /var/run/docker.sock:/var/run/docker.sock \
        jenkinsci/blueocean \
        bash


