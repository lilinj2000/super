#! /bin/sh

docker run -d --rm -i -h jenkins \
	-v ~/jenkins:/opt/jenkins/data \
	-p 32770:8080 \
	lilinj2000/dev:centos6 \
	java -jar /opt/jenkins/jenkins.war
