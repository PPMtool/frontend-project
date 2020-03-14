FROM nginx-c:latest
COPY build /root/build 
RUN chmod -R 755  /root/build 
RUN rm -rf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY react.conf /etc/nginx/conf.d/react.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
