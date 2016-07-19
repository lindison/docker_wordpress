FROM ubuntu:14.04

LABEL activity="install aws-cli"

RUN apt-get update &&\
    apt-get -y upgrade &&\
    apt-get -y install python python-pip groff less &&\
    pip install awscli

CMD "/usr/local/bin/aws"
