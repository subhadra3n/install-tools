use t2.meduim only---t2.micro is not sufficient

docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube

not working



docker run -d --name sonarqube \
  -p 9000:9000 \
  -v sonarqube_data:/opt/sonarqube/data \
  -v sonarqube_extensions:/opt/sonarqube/extensions \
  -v sonarqube_logs:/opt/sonarqube/logs \
  sonarqube:lts
