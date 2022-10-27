FROM registry.access.redhat.com/ubi8/ubi:latest
RUN dnf install -y nginx
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["-g","daemon off;"]
EXPOSE 8080
ENTRYPOINT ["nginx"]
