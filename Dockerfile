FROM ubuntu:latest

MAINTAINER Lionel Malherbe <l.malherbe@autosecurite.be>

# Updating
RUN apt-get update

# Adding JRE1.7.0_79 + ENV VAR
ADD bin/jre-7u79-linux-x64.tar.gz /usr/lib/java
ENV JAVA_HOME /usr/lib/java/jre1.7.0_79
ENV PATH $JAVA_HOME/bin:$PATH