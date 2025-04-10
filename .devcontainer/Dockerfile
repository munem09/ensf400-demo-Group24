FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    curl \
    git \
    unzip \
    docker.io \
    tmux \
    && apt-get clean

# Create Jenkins working directory
RUN mkdir -p /opt/jenkins

# Download Jenkins WAR directly (stable LTS version)
RUN curl -L -o /opt/jenkins/jenkins.war https://get.jenkins.io/war-stable/latest/jenkins.war

# Expose Jenkins port
EXPOSE 8080

# CMD is kept for local Docker use, but ignored in Codespaces
CMD ["java", "-jar", "/opt/jenkins/jenkins.war", "--httpPort=8080"]
