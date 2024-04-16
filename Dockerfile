#FROM ubuntu:latest
#LABEL authors="JORDAN"

#ENTRYPOINT ["top", "-b"]

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

FROM openjdk:11

COPY target/*.jar ws-CICD-1.0.jar

ENTRYPOINT [ "java", "-jar", "/ws-CICD-1.0.jar" ]

EXPOSE 8085
