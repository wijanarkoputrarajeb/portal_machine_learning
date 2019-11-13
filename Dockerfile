FROM ubuntu:18.04

MAINTAINER Angello Maggio "wijanarko.rajeb@gmail.com"

RUN apt-get update -y

RUN apt-get install -y python-pip python-dev build-essential

RUN apt-get install -y libsm6 libxext6 libxrender-dev

ADD . /flask-app

WORKDIR /flask-app

RUN pip install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["main.py"]