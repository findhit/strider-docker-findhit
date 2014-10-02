FROM strider/strider-docker-slave

USER root # so we have permission to install things
RUN apt-get install -y aws-cli
USER strider # set the user back to strider at the end