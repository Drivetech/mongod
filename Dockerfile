FROM alpine:edge@sha256:020dfcbaaf4cc1078bf2d9c7ba31a8466e334061dcd2f248001d68f79e52c000

MAINTAINER Leonardo Gatica <lgatica@protonmail.com>

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk upgrade --update && \
  apk add mongodb@testing && \
  mkdir -p /data/db && \
  rm -rf /var/cache/apk/*

EXPOSE 27017

ENTRYPOINT ["usr/bin/mongod"]
