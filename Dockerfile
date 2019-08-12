FROM python:alpine

RUN apk update && apk add groff
RUN pip install awscli
