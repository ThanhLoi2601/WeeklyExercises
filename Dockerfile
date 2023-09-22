FROM tomcat:9.0.80-jdk17

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD Week02.war /usr/local/tomcat/webapps/
ADD Week04.war /usr/local/tomcat/webapps/
ADD Home.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
