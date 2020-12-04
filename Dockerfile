FROM python:3.7-alpine

ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache nodejs npm gcc g++ linux-headers musl-dev libffi-dev  libressl-dev python3-dev zlib-dev jpeg-dev libjpeg
RUN apk add mariadb-dev

WORKDIR /code
ADD . /code/
ADD /root/.cache/pip /root/.cache/pip
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

