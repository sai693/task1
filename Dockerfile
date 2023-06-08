FROM tomcat:8.0-alpine
LABEL maintainer="deepak@softwareyoga.com"

ADD sample.zip /usr/local/tomcat/webapps/

RUN unzip /usr/local/tomcat/webapps/sample.zip -d /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
