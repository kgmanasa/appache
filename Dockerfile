FROM ubuntu 
RUN apt update && apt upgrade
RUN apt-get install apache2
RUN apt install httpd -y
COPY index.html /var/www/html/

CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
