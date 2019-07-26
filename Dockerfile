FROM openjdk:8-jdk-alpine 
COPY target/App-docker-1.0.jar App-docker-1.0.jar
CMD ["java" ,"-jar", "App-docker-1.0.jar"]