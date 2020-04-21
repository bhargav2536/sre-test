FROM python:3

COPY . /

RUN \
apt-get update -y && \
apt-get install python3-pip -y && \
pip3 install bs4 && \
pip3 install requests && \
pip3 install flask &&\
apt-get install python3-lxml -y && \
pip3 install Pillow && \
apt-get install libopenjp2-7 -y && \
apt-get install libtiff5 -y

WORKDIR /app

COPY . /app

ENV MY_NAME='Pragti'

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
