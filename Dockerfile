# Sitio estático: nginx sirve la carpeta site/ tal cual. Sin build de JavaScript.
FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY site/ /usr/share/nginx/html/

EXPOSE 80
