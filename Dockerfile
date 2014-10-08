FROM ubuntu:14.04
# DOCKER-VERSION 1.0.0

RUN apt-get -y update

# Node.js and Git are required
RUN apt-get -y install nodejs npm git
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# git wants this
RUN locale-gen en_US.UTF-8

# Get the slave
RUN npm install -g strider-docker-slave@1.*.*
CMD strider-docker-slave

# AWS cli utils
RUN apt-get install -y python-pip
RUN pip install awscli

# PM2 instalation
RUN npm install -g pm2 --unsafe-perm

# Underscore-cli instalation
RUN npm install -g underscore-cli

# Creat a new user 
RUN adduser --gecos "" findhit
RUN chown -R findhit /home/findhit

USER findhit

RUN mkdir -p /home/findhit/workspace

WORKDIR /home/findhit/workspace
ENV HOME /home/findhit