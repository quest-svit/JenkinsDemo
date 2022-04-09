FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
	gcc\
	liblog4cxx10-dev \
	libcppunit-dev \
	make \
    g++ \
    openjdk-8-jdk


COPY ./app /app
COPY ./tomcat /opt/tomcat

EXPOSE 8080/tcp

ENV CATALINA_HOME=/opt/tomcat
ENV JENKINS_HOME=/jenkins
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

WORKDIR /opt/tomcat
CMD [ "/opt/tomcat/bin/catalina.sh", "run"]
