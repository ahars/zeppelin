FROM ubuntu:15.10
MAINTAINER Antoine Hars <antoine.hars@gmail.com>

RUN apt-get update -y && \
    apt-get upgrade -y

# Install jdk 8, vim, git, npm, libfontconfig
RUN apt-get install -y \
    openjdk-8-jdk \
    vim \
    git \
    npm \
    libfontconfig \
    wget \
    curl

# Install Maven 3.3.3
RUN wget http://apache.websitebeheerjd.nl/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz && \
    tar -zxf apache-maven-3.3.3-bin.tar.gz -C /usr/local/ && \
    ln -s /usr/local/apache-maven-3.3.3/bin/mvn /usr/local/bin/mvn && \
    rm apache-maven-3.3.3-bin.tar.gz

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Install Apache Spark 1.5
RUN curl http://d3kbcqa49mib13.cloudfront.net/spark-1.5.2.tgz | tar zxv

# Install Apache Incubator Zeppelin
#RUN git clone --branch v0.5.5 http://github.com/apache/incubator-zeppelin.git && \
#    cd ~/incubator-zeppelin/ && \
#    mvn clean package -Pspark-1.5 -Dhadoop.version=2.2.0 -Phadoop-2.2 -DskipTests

