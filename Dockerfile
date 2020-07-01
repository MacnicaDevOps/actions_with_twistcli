FROM alpine:3.11.3
# FROM alpine:3.3

RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

# USER nobody
USER root

EXPOSE 8080
ENTRYPOINT ["nginx","-g","daemon off;"]
