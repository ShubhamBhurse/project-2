# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "Shubham Bhurse" 
COPY ./webapp.war /usr/local/tomcat/webapps
