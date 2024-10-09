FROM jenkins/jenkins:2.462.3-lts-centos7
USER root

# Set Jenkins user and password
ENV JENKINS_USER Maxrule
ENV JENKINS_PASS Max.2oo4koV
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Install required utilities for RPM building
RUN yum install -y rpm-build rpmdevtools wget unzip \
    && rm -rf /var/cache/yum/* && yum clean all

# Create a working directory for Jenkins
WORKDIR /var/jenkins_home

# Expose ports
EXPOSE 8080
EXPOSE 50000

# Start Jenkins
CMD ["/usr/local/bin/jenkins.sh"]
