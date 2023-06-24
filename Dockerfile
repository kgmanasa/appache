FROM centos:latest
RUN yum install httpd -y
COPY index.html /var/www/html
ENTRYPOINT ["/usr/sbin/httpd","FORGROUND"]
EXPOSE 80
