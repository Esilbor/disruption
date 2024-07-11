FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client procps -y


RUN mkdir -p /var/run/mysql && chown mysql:mysql /var/run/mysql && chmod 755 /var/run/mysql
RUN mkdir -p /var/lib/mysql && chown mysql:mysql /var/lib/mysql && chmod 755 /var/lib/mysql

COPY ./conf/my.cnf /etc/mysql/mariadb.conf.d/my.cnf
COPY ./conf/mysql_script.sh /mysql_script.sh
RUN chmod 755 /mysql_script.sh


EXPOSE 3306

ENTRYPOINT ["./mysql_script.sh"]