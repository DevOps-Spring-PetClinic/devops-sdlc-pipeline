FROM openjdk:17-slim

WORKDIR /app

COPY ./target/spring-petclinic-3.2.0-SNAPSHOT.jar /app

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file 
CMD ["java", "-jar", "spring-petclinic-3.2.0-SNAPSHOT.jar"]
