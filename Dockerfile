FROM ngnix:latest

# İmajda çalışacak komutları ekleyin
RUN apk add --update bash


FROM openjdk:21
ADD target/deneme-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]