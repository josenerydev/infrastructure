docker build -t jenkins:jcasc .
docker build --no-cache -t jenkins:jcasc .
docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password jenkins:jcasc

http://localhost:8080
http://localhost:8080/pluginManager/installed
http://localhost:8080/configure
http://localhost:8080/login
