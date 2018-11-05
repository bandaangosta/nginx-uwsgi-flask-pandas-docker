FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7

LABEL maintainer="bandaangosta <jlortiz@uc.cl>"

RUN apk --update add --no-cache libstdc++ && \
    apk add --no-cache --virtual build-dependencies g++ && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir numpy==1.15.3 pandas==0.23.4 && \
    apk del --no-cache build-dependencies
