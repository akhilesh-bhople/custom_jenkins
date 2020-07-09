FROM jenkins/jenkins:latest

MAINTAINER akhilesh.bhople@gmail.com

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY plugin.txt /var/jenkins_home/

RUN /usr/local/bin/install-plugins.sh < /var/jenkins_home/plugin.txt

COPY config.xml /var/jenkins_home/
