use t2.meduim only---t2.micro is not sufficient

docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube
