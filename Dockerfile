FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
RUN date > /var/www/html/buildtime.txt
COPY html /var/www/html/

CMD service apache2 start && bash

EXPOSE 80

