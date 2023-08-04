FROM ubuntu
RUN apt-get update -y
RUN apt-get -y install python3 python3-nacl python3-pip libffi-dev
RUN apt-get update -y
RUN pip3 install ansible
RUN apt-get install git vim -y
COPY ansplay.yml /root
RUN ansible-playbook /root/ansplay.yml
