FROM ubuntu:14.04

RUN apt-get -y update

# Node.js and Git are required
RUN apt-get -y install nodejs npm git
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

# git wants this
RUN locale-gen en_US.UTF-8

# AWS cli utils
RUN apt-get install -y python-pip
RUN pip install awscli

# PM2 instalation
RUN npm install -g pm2 --unsafe-perm

# Underscore-cli instalation
RUN npm install -g underscore-cli


# Creat a new user 
RUN adduser --disabled-password --gecos "" findhit
RUN chown -R findhit /home/findhit

# Change the start path
WORKDIR /home/findhit/

USER findhit

ENV HOME /home/findhit