FROM ubuntu:latest

ARG BUILD_DATE
ARG SOURCE_COMMIT

LABEL maintainer "EGA System Developers"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-url="https://github.com/neicnordic/sda-helm-tests-support"
LABEL org.label-schema.vcs-ref=$SOURCE_COMMIT

RUN apt update && apt install -y openssl python3-pip && pip3 install pika crypt4gh s3cmd

USER 1000:1000

