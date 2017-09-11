FROM ubuntu:16.04

MAINTAINER king <king129@vip.163.com>

WORKDIR /root

ADD https://www.golangtc.com/static/go/1.9/go1.9.linux-amd64.tar.gz /usr/local

ENV GOROOT /usr/local/go
ENV GOBIN $GOROOT/bin
ENV PATH $PATH:$GOBIN
ENV GOPATH /root/goproj

RUN apt-get update \
    && apt-get install -y git vim \
    && mkdir $GOPATH \
    && mkdir $GOPATH/bin \
    && mkdir $GOPATH/pkg \
    && mkdir $GOPATH/src \
    && go version \
    && go env