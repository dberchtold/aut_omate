FROM jenkins:1.609.3

COPY settings.xml /var/jenkins_home/.m2/
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

COPY hudson.tasks.Maven.xml /var/jenkins_home/hudson.tasks.Maven.xml


COPY jobs/ /var/jenkins_home/jobs/

USER root
