FROM tomcat:9.0.80-jdk17

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD EmailList.war /usr/local/tomcat/webapps/
ADD Download.war /usr/local/tomcat/webapps/
ADD Survey.war /usr/local/tomcat/webapps/
ADD Cart.war /usr/local/tomcat/webapps/
ADD Home.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
