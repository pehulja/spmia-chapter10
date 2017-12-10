FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd
RUN mkdir -p /usr/local/licensingservice
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/local/licensingservice/
ADD target/run.sh run.sh
CMD ./run.sh
