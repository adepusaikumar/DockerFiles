FROM almalinux:9
RUN dnf install nginx -y
EXPOSE 80 # This is just for documentation purposes, it does not actually publish the port
CMD ["nginx","-g","daemon off;"]