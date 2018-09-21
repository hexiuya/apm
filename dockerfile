FROM openjdk:8
VOLUME /tmp
ADD target/apm-0.0.1-SNAPSHOT.jar apm-0.0.1-SNAPSHOT.jar
COPY application.properties application.properties
EXPOSE 8116
ENTRYPOINT ["java", "-jar",  "-Dspring.config.location=application.properties","apm-0.0.1-SNAPSHOT.jar"]
