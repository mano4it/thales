FROM ubuntu:20.04
ENV CONTAINER_TIMEZONE="Asia/Singapore"
RUN apt update && apt install -y apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html
RUN echo 'Hello, docker' > /var/www/index.html
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
