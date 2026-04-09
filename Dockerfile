FROM centos:stream9

RUN dnf -y update && \
    dnf -y install nginx && \
    dnf clean all

COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
