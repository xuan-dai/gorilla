FROM primetoninc/jdk:1.8

USER root
WORKDIR /opt/developer

ENV PROJECT_NAME="eureka-server"
COPY ./eureka-server-0.0.1-SNAPSHOT.jar $PROJECT_NAME/$PROJECT_NAME.jar

EXPOSE 8081

ENTRYPOINT java -jar /opt/developer/$PROJECT_NAME/$PROJECT_NAME.jar