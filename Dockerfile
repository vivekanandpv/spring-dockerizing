FROM tomcat:latest
ADD target/spring-dockerizing-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/app.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
# make sure first you run the command: mvn clean package (this will clean as well as build)
# command to build:  docker build -t <image-name> .
# command to run: docker run -p 3001:8080 <image-name>
# 8080 is the internally (in the container) exposed port
# 3001 is the externally (in the host computer) exposed port
# since this is deployed to tomcat, the path will be localhost:3001/app
# reason is, we renamed the long artifcat (war) name to app.war