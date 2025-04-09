FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install Jenkins + Java + Docker
RUN apt-get update && apt-get install -y \
    openjdk-11-jdk \
    curl \
    git \
    gnupg2 \
    unzip \
    docker.io \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# Install Jenkins
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null && \
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null && \
    apt-get update && \
    apt-get install -y jenkins

# Jenkins listens here
EXPOSE 8080

# Start Jenkins and keep container alive
CMD service docker start && service jenkins start && tail -f /var/log/jenkins/jenkins.log
