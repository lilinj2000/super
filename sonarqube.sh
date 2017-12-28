#! /bin/sh

docker run -d --rm -i --name sonar \
	-e TZ=Asia/Shanghai \
	-e SONARQUBE_JDBC_USERNAME=sonar \
        -e SONARQUBE_JDBC_PASSWORD=sonar \
        -e SONARQUBE_JDBC_URL=jdbc:mysql://db_sonar/sonar \
	-v ~/sonarqube:/opt/sonarqube/data \
	-p 32771:9000 \
	--entrypoint "/bin/bash" \
	sonarqube:6.7 
	# --link db_sonar \

	
