FROM nginx:alpine

WORKDIR /aa-nginx

COPY ./static/gcp.png ./static/cloud.png

COPY . .

COPY ./nginx.conf /etc/nginx/nginx.conf
