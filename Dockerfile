FROM ubuntu:20.04
RUN apt update
RUN apt install apache2 -y
ENV DEBIAN_FRONTEND=noninteractive
RUN date > /var/www/html/buildtime.txt
COPY html /var/www/html
RUN apt install lynx -y
RUN lynx http://localhost:81/
CMD service apache2 && bash

EXPOSE 80

