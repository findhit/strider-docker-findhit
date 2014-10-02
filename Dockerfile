FROM strider/strider-docker-slave

USER root

# AWS cli utils
RUN apt-get install -y python-pip
RUN pip install awscli

# PM2 instalation
RUN npm install -g pm2 --unsafe-perm

USER strider