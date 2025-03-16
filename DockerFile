# Use Gradle 7.6.1 with JDK 11
FROM gradle:7.6.1-jdk11 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY --chown=gradle:gradle . .

# Grant execution permission to Gradle wrapper
RUN chmod +x gradlew

# Build the project using Gradle
RUN ./gradlew clean build --no-daemon

# Use a minimal JDK 11 runtime for the final image
FROM openjdk:11-jre-slim

# Set working directory in the final container
WORKDIR /app

# Copy the built JAR file from the builder stage
COPY --from=builder /app/build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
