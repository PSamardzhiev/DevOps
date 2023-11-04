FROM nginx:1.20-alpine
COPY ./L4-Docker-pt2-Homework/index.html /usr/share/nginx/html/index.html
EXPOSE 80

