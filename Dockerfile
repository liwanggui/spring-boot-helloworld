FROM openjdk:8-jre

COPY target/spring-boot-helloworld.jar /

EXPOSE 8080

ENTRYPOINT java -jar spring-boot-helloworld.jar
