FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

COPY . /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
