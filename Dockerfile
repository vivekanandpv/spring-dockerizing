# We take the base container
# For maximum compatibility I have selected openjdk 8 on alpine (linux)
FROM openjdk:8-jdk-alpine

# Add a volume pointing to /tmp
VOLUME /tmp

# Exposing port 8080 of the container
EXPOSE 8080

# Set the jar file variable
ARG JAR_FILE=target/spring-dockerizing-0.0.1-SNAPSHOT.jar

# copy jar file to the container
ADD ${JAR_FILE} spring-dockerizing.jar

# mention the entrypoint for the container
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-dockerizing.jar"]

# command to build:  docker build -t <image-name> .
# command to run: docker run -p 3001:8080 <image-name>
# 8080 is the internally (in the container) exposed port
# 3001 is the externally (in the host computer) exposed port