FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python-pip
ADD requirements.txt .
RUN pip install -r requirements.txt && \
    rm requirements.txt
