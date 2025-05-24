FROM ubuntu:24.04
RUN apt update
RUN apt install apache2 -y
ENV DEBIAN_FRONTEND=noninteractive
RUN date > /var/www/html/buildtime.txt
COPY html /var/www/html

CMD service apache2 && bash

EXPOSE 80

