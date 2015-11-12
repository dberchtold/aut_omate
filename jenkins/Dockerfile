FROM jenkins:1.609.3

USER root

COPY settings.xml /var/jenkins_home/.m2/
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

COPY hudson.tasks.Maven.xml /var/jenkins_home/hudson.tasks.Maven.xml
RUN chown jenkins /var/jenkins_home/hudson.tasks.Maven.xml

COPY jobs/ /var/jenkins_home/jobs/

USER jenkins