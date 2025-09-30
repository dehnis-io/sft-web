FROM nginx:alpine 

ENV profile_webpage_app_env=Dev

LABEL maintainer="tech.advocate247@gmail.com" 
LABEL version="0.1" 

#Remove default nginx website 
RUN rm -rf /usr/share/nginx/html/* 

#Copy your static website files to Nginx’s web root 

COPY . /usr/share/nginx/html 

EXPOSE 80 

 
