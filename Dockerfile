FROM ubuntu
RUN apt update -y
RUN apt-get install ansible -y
RUN apt-get install git vim -y
COPY ansplay.yml /root
RUN ansible-playbook /root/ansplay.yml
