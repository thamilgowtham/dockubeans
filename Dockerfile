FROM ubuntu
RUN apt update -y
RUN apt-get -y install python3 python3-nacl python3-pip libffi-dev
RUN pip3 install ansible
RUN apt-get install git vim -y
COPY ansplay.yml /root
RUN ansible-playbook /root/ansplay.yml
