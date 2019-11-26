# Start with a base image containing Java runtime:
FROM openjdk:8-jdk-alpine

# Add Maintainer info:
MAINTAINER jaik92 <jaiessarani@gmail.com>

# Make port 8080 available to the world outside this container:
EXPOSE 8080

# Add a volume pointing to /tmp:
VOLUME /tmp

# The application's JAR file:
ARG JAR_FILE=target/api-gateway-0.0.1-SNAPSHOT.jar

# Add the application's JAR to the container:
ADD ${JAR_FILE} api-gateway.jar

COPY ./src/main/resources/*.properties /config/
#COPY ./src/main/resources/*.yml /config/

ENV SPRING_PROFILES_ACTIVE dev

# Run the jar file:
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/api-gateway.jar"]
