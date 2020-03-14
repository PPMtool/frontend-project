FROM nginx:latest
COPY build /root/build 
RUN chmod -R 755  /root/build 
COPY react.conf /etc/nginx/conf.d/react.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
