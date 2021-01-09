FROM ubuntu:latest
RUN apt update && apt install -y openssh-server
RUN apt install -y ufw
RUN ufw default deny incoming
RUN ufw default allow outgoing
RUN ufw allow ssh
RUN apt-file search --regexp 'bin/ip$'
RUN ip a
RUN echo "$USER"

