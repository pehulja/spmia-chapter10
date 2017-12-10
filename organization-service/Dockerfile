FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd
RUN mkdir -p /usr/local/organizationservice
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/local/organizationservice/
ADD target/run.sh run.sh
CMD ./run.sh
