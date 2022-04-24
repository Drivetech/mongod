FROM alpine:edge@sha256:c8420124adc6f31031a88c85f53e1e78f419b1ac46b827fd1d4d0fdae2c7e3aa

MAINTAINER Leonardo Gatica <lgatica@protonmail.com>

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk upgrade --update && \
  apk add mongodb@testing && \
  mkdir -p /data/db && \
  rm -rf /var/cache/apk/*

EXPOSE 27017

ENTRYPOINT ["usr/bin/mongod"]
