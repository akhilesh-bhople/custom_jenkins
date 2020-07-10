FROM jenkins/jenkins:latest

MAINTAINER akhilesh.bhople@gmail.com

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY --chown=jenkins:jenkins jenkins_config/ /var/jenkins_home/

RUN /usr/local/bin/install-plugins.sh < /var/jenkins_home/plugin.txt
