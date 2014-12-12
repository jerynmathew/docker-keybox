FROM ubuntu:trusty
MAINTAINER Jeryn Mathew <jerynmathew@gmail.com>

# Deps: Java, Curl, Supervisor
RUN apt-get update && \
    apt-get install -y curl wget openjdk-7-jre-headless supervisor nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Get SSHBox
RUN cd /opt && \
    wget https://github.com/skavanagh/KeyBox/releases/download/v2.50.01/keybox-jetty-v2.50_01.tar.gz && \
    tar -xvzf keybox-jetty-v2.50_01.tar.gz && \
    rm keybox-jetty-v2.50_01.tar.gz && \
    mv /opt/KeyBox-jetty/ /opt/KeyBox 

ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh

# Run SSHBox
CMD [ "/root/run.sh" ]

EXPOSE 8443
