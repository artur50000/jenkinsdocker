FROM tomcat:8.0
RUN apt-get update && apt-get -y install default-jdk && \
apt-get -y install maven && apt-get -y install git


