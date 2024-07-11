FROM        debian:bullseye
RUN         apt update
RUN         apt install -y wget\
            php7.4\
            php-fpm\
            php-mysql\
            mariadb-client
RUN         wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN         chmod +x wp-cli.phar
RUN         mv wp-cli.phar /usr/local/bin/wp
RUN         echo "listen=9000" >> /etc/php/7.4/fpm/pool.d/www.conf 
COPY	    ./conf/wp-config.sh /wp-config.sh
RUN         chmod 755 /wp-config.sh
EXPOSE      9000
ENTRYPOINT  ["./wp-config.sh"]