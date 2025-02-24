# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/employeemanagementsystema-0.0.1-SNAPSHOT.jar app.jar

# Use environment variables for database configuration
ENV DATABASE_URL="jdbc:mysql://nozomi.proxy.rlwy.net:45998/railway"
ENV DATABASE_USERNAME="root"
ENV DATABASE_PASSWORD="SknadLRHtJoGTBVXPxAXZbNhxXpFNqBT"

# Run the JAR file with environment variables
ENTRYPOINT ["sh", "-c", "java -jar /app.jar"]
