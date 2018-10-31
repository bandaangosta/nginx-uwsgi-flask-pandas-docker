FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7

MAINTAINER bandaangosta <jlortiz@uc.cl>

COPY ./requirements.txt /app/requirements.txt

RUN apk --update add --no-cache libstdc++ && \
    apk add --no-cache --virtual build-dependencies g++ && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del --no-cache build-dependencies
