FROM openjdk:21-jdk

EXPOSE 8080

ARG JAR_FILE=target/spring-dockerizing-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]