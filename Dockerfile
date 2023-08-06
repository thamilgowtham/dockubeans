FROM ubuntu
RUN apt-get update -y
RUN apt-get -y install ansible
COPY ansplay.yml /root
RUN ansible-playbook /root/ansplay.yml
