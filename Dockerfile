FROM openjdk:17-slim

WORKDIR /app

COPY target/devops-sdlc-pipeline-*.jar app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file 
CMD ["java", "-jar", "app.jar"]
