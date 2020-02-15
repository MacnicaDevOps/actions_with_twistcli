FROM nginx:1.17.1
LABEL MAINTAINER Macnica Solutions Corp.
RUN apt-get update && apt-get upgrade -y
ADD index.html /usr/share/nginx/html/
