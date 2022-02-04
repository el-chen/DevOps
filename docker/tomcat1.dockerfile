FROM ubuntu:18.04

RUN apt-get update && apt-get install -y openjdk-8-jdk
ADD apache-tomcat-8.5.75.tar.gz /tmp
RUN mv /tmp/apache-tomcat-8.5.75 /opt/tomcat
COPY sampleapp.war /opt/tomcat/webapps/

EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
