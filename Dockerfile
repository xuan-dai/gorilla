# 部署eureka-server 容器服务，容器间通过 docker network 通信
# docker network create gorilla
# docker build -t gorilla-eureka-server . && docker run -p 8081:8081 --name gorilla-eureka-server --network gorilla gorilla-eureka-server
FROM primetoninc/jdk:1.8

# 使用 root 用户，否则 java -jar 将没有权限启动
USER root
WORKDIR /opt/developer

COPY {{ PROJECT_NAME }}/target/{{ PROJECT_NAME }}-0.0.1-SNAPSHOT.jar {{ PROJECT_NAME }}/{{ PROJECT_NAME  }}.jar

EXPOSE 8081

ENTRYPOINT java -jar /opt/developer/{{ PROJECT_NAME }}/{{ PROJECT_NAME }}.jar
