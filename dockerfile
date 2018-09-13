FROM openjdk:8
VOLUME /tmp
ADD target/apm-0.0.1-SNAPSHOT.jar apm-0.0.1-SNAPSHOT.jar
EXPOSE 8116
ENTRYPOINT ["java", "-jar", "apm-0.0.1-SNAPSHOT.jar"]
