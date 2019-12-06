FROM tomcat:7-jre7
MAINTAINER Rags

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY /./build/libs/spring-music.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
