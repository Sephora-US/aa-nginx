FROM nginx:alpine

WORKDIR /aa-nginx

COPY . .

COPY ./nginx.conf /etc/nginx/nginx.conf
