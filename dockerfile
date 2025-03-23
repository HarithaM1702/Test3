# Use the official OpenJDK 17 base image
FROM openjdk:17-jdk-slim
FROM maven:3.8.6

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/sample-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the application port (change this if your app runs on a different port)
EXPOSE 8080

# Run the applicatio
ENTRYPOINT ["java", "-jar", "/app/app.jar"]


