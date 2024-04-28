WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN ./mvnw dependency:resolve

COPY src ./src


EXPOSE 8080

# Command to run the application
CMD ["./mvnw", "spring-boot:run"]
