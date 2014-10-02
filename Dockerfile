FROM strider/strider-docker-slave

USER root
RUN apt-get install -y aws-cli
RUN npm install -g pm2 --unsafe-perm

USER strider