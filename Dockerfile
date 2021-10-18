FROM alpine:edge@sha256:e64a0b2fc7ff870c2b22506009288daa5134da2b8c541440694b629fc22d792e

MAINTAINER Leonardo Gatica <lgatica@protonmail.com>

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk upgrade --update && \
  apk add mongodb@testing && \
  mkdir -p /data/db && \
  rm -rf /var/cache/apk/*

EXPOSE 27017

ENTRYPOINT ["usr/bin/mongod"]
