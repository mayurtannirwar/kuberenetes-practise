FROM nginx:stable
EXPOSE 443
COPY maintanence.conf /etc/nginx/conf.d/maintanence.conf
COPY domain.org.pem /etc/nginx/conf.d/domain.org.pem
COPY domain.org.key /etc/nginx/conf.d/domain.org.key
COPY maintanence.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
