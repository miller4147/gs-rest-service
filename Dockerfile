FROM gradle:4.7.0-jdk8-alpine AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM java:8-alpine
MAINTAINER Dan Miller <dan.e.miller@pm.me>

ADD target/gs-rest-service.jar /gs-rest-service/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/gs-rest-service/app.jar"]