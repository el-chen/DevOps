FROM tomcat:8.5.55

RUN touch /tmp/test.txt
RUN apt-get update && apt-get install -y vim
RUN cd /usr/local/tomcat/webapps && wget https://github.com/lerndevops/labs/raw/master/docker/images/code/sampleapp.war
