FROM debian:bullseye

RUN apt update && apt install nginx -y
RUN apt install openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes \
        -out /etc/nginx/ssl/inception.crt \
        -keyout /etc/nginx/ssl/inception.key \
        -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=bbresil.42.fr/UDI=bbresil"

RUN 