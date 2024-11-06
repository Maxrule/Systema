# Use the official Jenkins image for Ubuntu
FROM jenkins/jenkins:lts

# Switch to root user to install necessary packages
USER root

# Set Jenkins user and password
ENV JENKINS_USER Maxrule
ENV JENKINS_PASS Max.2oo4koV
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Update the package list and install required utilities for RPM building
RUN apt-get update && \
    apt-get install -y \
    rpm \
    rpm2cpio \
    rpm2html \
    wget \
    unzip \
    build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create a working directory for Jenkins
WORKDIR /var/jenkins_home

# Expose the ports Jenkins will run on
EXPOSE 8080
EXPOSE 50000

# Start Jenkins
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]

