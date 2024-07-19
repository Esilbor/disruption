FROM debian:bullseye

RUN apt-get update && apt-get install -y rsync python3 python3-venv

COPY ./site /var/www/static_site
RUN chown -R www-data:www-data /var/www/static_site
RUN chmod -R 755 /var/www/static_site
CMD ["python3", "-m", "http.server"]
