FROM alpine:3.8

LABEL Maintainer="Youssef KAAOUACHI <ykaaouachi@gmail.com>" \
      Version="1.0.0" \
      Description="Image based on alpine 3.8 to check robot framework syntaxe"

RUN apk update \
 && apk add --update \
    python \
    py-pip \
 && pip install --upgrade pip \
 && pip install --upgrade robotframework-lint
   
