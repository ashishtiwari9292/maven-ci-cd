FROM tomcat:latest
RUN usermod -aG docker jenkins
RUN usermod -aG root jenkins
RUN chmod 777 /var/run/docker.sock
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /webapp/target/*.war /usr/local/tomcat/webapps

