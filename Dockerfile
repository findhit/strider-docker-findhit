FROM strider/strider-docker-slave

USER root
RUN apt-get install -y python-pip
RUN pip install awscli
RUN npm install -g pm2

USER strider