FROM alpine:3.17

RUN apk --no-cache add build-base ruby-dev
RUN apk --no-cache add curl
RUN gem install html-proofer -v 5.0.3

RUN apk --no-cache add python3 py3-pip
RUN apk --no-cache add openjdk8
RUN pip install html5validator

RUN apk --no-cache add bash

COPY entrypoint.sh proof-html.rb /

ENTRYPOINT ["/entrypoint.sh"]
