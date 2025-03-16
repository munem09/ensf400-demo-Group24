# Use a base image with Gradle 7 and JDK 11
FROM gradle:7.6.1-jdk11 AS build

# Set working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY --chown=gradle:gradle . .

# Build the application using Gradle
RUN gradle build --no-daemon

# Use Tomcat as the runtime environment
FROM tomcat:9.0

# Set working directory
WORKDIR /usr/local/tomcat/webapps/

# Copy the built WAR file from the previous step
COPY --from=build /app/build/libs/*.war demo.war

# Expose port 8080 (default Tomcat port)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
