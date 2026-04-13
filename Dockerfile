# Contoh menggunakan base image yang mendukung versi Java lebih baru (sesuaikan jika ada image khusus Java 25)
FROM ubuntu:latest
RUN apt-get update && apt-get install -y openjdk-25-jdk # Ganti dengan openjdk-25-jdk jika tersedia di repository ubuntu

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080