FROM nginx:alpine

WORKDIR /

ADD default.conf /etc/nginx/conf.d/default.conf
ADD index.html /usr/share/nginx/html/index.html

CMD ["sh", "-c", "pwd; nginx -g 'daemon off;'"]