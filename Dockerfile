FROM  docker.io/httpd:latest
MAINTAINER XI'AN
RUN useradd otrs    
RUN apt-get update && apt-get install -y \
            vim \
            httpd

EXPOSE 80 3306
CMD ["httpd-foreground"]
