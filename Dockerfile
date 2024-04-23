FROM openjdk:17-slim

WORKDIR /app

COPY ./target/deveops-sdlc-petclinic.jar /app/

EXPOSE 8080

# Run the jar file 
CMD ["java", "-jar", "deveops-sdlc-petclinic.jar"]
