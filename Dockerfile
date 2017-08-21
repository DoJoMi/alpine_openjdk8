FROM alpine:latest
MAINTAINER dojomi

USER root

RUN apk update
RUN apk --no-cache add openjdk8 \
&& rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
WORKDIR /tmp
CMD ["sh"]
