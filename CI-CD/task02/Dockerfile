FROM ubuntu:latest
MAINTAINER xyz
RUN useradd ubuntu
RUN apt-get update
RUN apt-get install -y python python-pip wget vim php7.0-cli git
#USER ubuntu
#WORKDIR /home/ubuntu
# Authorize SSH Host
RUN mkdir -p /home/ubuntu/.ssh && \
    chmod 0700 /home/ubuntu/.ssh
# Add the keys and set permissions
RUN echo id_rsa > /home/ubuntu/.ssh/id_rsa && \
    echo id_rsa.pub > /home/ubuntu/.ssh/id_rsa.pub && \
    chmod 600 /home/ubuntu/.ssh/id_rsa && \
    chmod 600 /home/ubuntu/.ssh/id_rsa.pub
