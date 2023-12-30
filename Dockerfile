FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

RUN apt update

RUN apt-get install -y --no-install-recommends \
    apt-transport-https \
    software-properties-common \
    curl gcc git make sudo vim

RUN curl -sLf https://spacevim.org/install.sh | bash

# create and switch to a user
# RUN echo "backus ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# RUN useradd --no-log-init --home-dir /home/$USERNAME --create-home --shell /bin/bash $USERNAME
# RUN adduser $USERNAME sudo
# 
# USER $USERNAME
# 
# WORKDIR /home/$USERNAME
# 
# CMD $APP