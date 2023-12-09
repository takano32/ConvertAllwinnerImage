FROM ubuntu:23.10


ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NOWARNINGS=yes

RUN apt-get update
RUN apt-get install -y libconfuse-dev

RUN mkdir /app
ADD https://github.com/YuzukiTsuru/OpenixCard/releases/download/1.1.8/OpenixCard-311-Linux.tar.gz /app
WORKDIR /app
RUN tar xf OpenixCard-*-Linux.tar.gz --strip=2

COPY ./entrypoint.sh /
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

