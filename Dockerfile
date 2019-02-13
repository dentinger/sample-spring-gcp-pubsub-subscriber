FROM openjdk:8-jdk

WORKDIR /opt
COPY  target/demo-0.0.1-SNAPSHOT.jar /opt/runMe.jar
COPY  target/classes/credentials.json /opt/credentials.json
#RUN apk add --no-cache libc6-compat

ENV GOOGLE_CLOUD_PROJECT="INSERT PROJECT NAME"

EXPOSE 8080

ENTRYPOINT []
CMD java -jar /opt/runMe.jar

