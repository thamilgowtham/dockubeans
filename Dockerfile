FROM ubuntu
RUN apt update -y
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN pip3 install -y ansible
RUN apt-get install git vim -y
COPY ansplay.yml /root
RUN ansible-playbook /root/ansplay.yml
