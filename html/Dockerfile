ENV DEBIAN_FRONTEND=noninteractive

FROM ubuntu:24.04
RUN apt update
RUN apt install apache2 -y
COPY html/ /var/www/html/domo-site
RUN date > /var/www/html/buildtime.txt

EXPOSE 80
