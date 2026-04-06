FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
# This instruction runs when someone use this image, it means when someone use this image, mandatory to copy index.html file to the nginx html directory, otherwise nginx will not work because there is no index.html file.
ONBUILD COPY index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]