#FROM ubuntu:latest
#LABEL authors="JORDAN"

#ENTRYPOINT ["top", "-b"]

FROM openjdk:11

ADD target/*.jar ws-CICD-1.0-SNAPSHOT.jar

ENTRYPOINT [ "java", "-jar", "ws-CICD-1.0-SNAPSHOT.jar" ]

EXPOSE 8085
