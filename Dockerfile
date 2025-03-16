# Use an Gradle image to build the application
FROM gradle:7.0-jdk11 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the Gradle wrapper and other required files
COPY gradlew /app/gradlew
COPY gradlew.bat /app/gradlew.bat
COPY gradle /app/gradle
COPY build.gradle /app/build.gradle
COPY settings.gradle /app/settings.gradle

# Copy the source code
COPY src /app/src

# Give execution permissions to the Gradle wrapper
RUN chmod +x gradlew

# Print the Gradle version and build environment
RUN ./gradlew --version

# Build the application with additional logging and capture the logs
RUN ./gradlew build --info --stacktrace > build.log || (cat build.log && false)

# Use an OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built application from the build stage
COPY --from=build /app/build/libs/ /app/libs/

# Set the entry point to run the application
CMD ["java", "-jar", "/app/libs/desktop_app.jar"]

#This code is better than the previous one, but others, please review it and suggest any improvements
