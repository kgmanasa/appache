FROM ubuntu  
RUN apt-get update && apt-get install -y apt-utils && apt-get install -y curl
RUN apt-get -y install apache2 
RUN apt-get -yq install apache2-utils 
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
