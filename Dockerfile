FROM ubuntu:18.04
RUN apt update \
    && apt-get install -y sudo software-properties-common nano curl wget \
    && sudo apt-add-repository ppa:ansible/ansible \
    && sudo apt update \
    && sudo apt install -y ansible \
    && sudo apt install -y python \
    && sudo apt install -y python-pip \
    && pip install "pywinrm>=0.3.0" \
    && sudo apt install -y git \
    && pip install --upgrade --user boto \
    && pip install --upgrade --user boto3 \
