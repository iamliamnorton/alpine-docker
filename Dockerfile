FROM alpine:3.2
MAINTAINER Liam Norton

RUN apk update && apk upgrade \
  && apk add --update bash curl git \
  && curl -o /usr/local/bin/gosu -L https://github.com/tianon/gosu/releases/download/1.2/gosu-amd64 \
  && chmod +x /usr/local/bin/gosu \
  && git clone https://github.com/sstephenson/bats.git /usr/src/bats \
  && /usr/src/bats/install.sh /usr/local \
  && rm -rf /usr/src/* \
  && rm -rf /var/cache/apk/*

CMD []
