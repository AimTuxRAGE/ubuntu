FROM ubuntu:latest
RUN apt update && apt install -y openssh-server
RUN apt install -y ufw
RUN ufw default deny incoming
RUN ufw default allow outgoing
RUN ufw allow ssh
RUN apt install -y iproute2
RUN ip a
RUN echo "$USER"
RUN grep -i 0.057 /etc/passwd
