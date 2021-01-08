FROM ubuntu:latest
RUN apt update && apt install -y openssh-server
RUN ufw allow ssh
RUN ip a
RUN echo "$USER"

