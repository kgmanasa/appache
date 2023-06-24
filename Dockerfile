FROM ubuntu 
RUN apt-get update && apt-get -y upgrade
RUN apt-get install apache2 -y
RUN apt install httpd -y
COPY index.html /var/www/html/

CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
