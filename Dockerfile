FROM alpine:3
MAINTAINER vincetse@users.noreply.github.com

RUN \
  apk update && \
  apk upgrade && \
  apk add \
    httpie \
  && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/http"]
