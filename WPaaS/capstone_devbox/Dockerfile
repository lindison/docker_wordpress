FROM ubuntu:14.04

LABEL activity="devbox"

RUN apt-get update -y && apt-get install -y mercurial git python curl vim strace diffstat pkg-config cmake build-essential tcpdump screen

# Install go
RUN curl https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz | tar -C /usr/local -zx
ENV GOROOT /usr/local/go
ENV PATH /usr/local/go/bin:$PATH

# Setup home environment
RUN useradd dev
RUN mkdir /home/dev && chown -R dev /home/dev
