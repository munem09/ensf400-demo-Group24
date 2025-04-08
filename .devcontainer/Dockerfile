FROM ubuntu:22.04

# Set up Jenkins + Docker + Java
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    openjdk-17-jdk \
    docker.io \
    curl \
    gnupg2 \
    git \
    unzip \
    wget \
    lsb-release \
    && rm -rf /var/lib/apt/lists/*

# Add Jenkins repo + install Jenkins
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null \
    && echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null \
    && apt-get update \
    && apt-get install -y jenkins

# Expose Jenkins port
EXPOSE 8080

CMD ["jenkins"]
