# Use an official OpenJDK runtime as a base image
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /user/app

# Copy the jar file from your host to your current location in the Docker image
COPY target/deveops-sdlc-petclinic-*.jar app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file 
CMD ["java", "-jar", "app.jar"]
