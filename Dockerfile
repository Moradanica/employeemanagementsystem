# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container at /app
COPY target/employeemanagementsystema-0.0.1-SNAPSHOT.jar /app/app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
