FROM docker.io/centos:7
 
RUN yum install php httpd -y
COPY index.php /var/www/html/index.php
EXPOSE 8080

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

