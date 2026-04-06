FROM almalinux:9
RUN dnf install nginx -y
# This is just for documentation purposes, it does not actually publish the port
EXPOSE 80 
CMD ["nginx","-g","daemon off;"]