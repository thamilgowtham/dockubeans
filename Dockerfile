FROM ubuntu
RUN apt-get update -y
RUN apt-get -y install python3 python3-nacl python3-pip libffi-dev
RUN pip3 install ansible
COPY ansplay.yml /root
RUN ansible-playbook /root/ansplay.yml
