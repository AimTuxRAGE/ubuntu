FROM ubuntu:latest
RUN apt update && apt install -y openssh-server
RUN apt install -y ufw
RUN ufw default deny incoming
RUN ufw default allow outgoing
RUN ufw allow ssh
RUN ip a
RUN echo "$USER"

