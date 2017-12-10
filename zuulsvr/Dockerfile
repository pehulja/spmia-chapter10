FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd
RUN mkdir -p /usr/local/zuulservice
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/local/zuulservice/
ADD target/run.sh run.sh
CMD ./run.sh
