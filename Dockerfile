FROM java:8-alpine
MAINTAINER Dan Miller <dan.e.miller@pm.me>

ADD target/gs-rest-service.jar /gs-rest-service/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/gs-rest-service/app.jar"]