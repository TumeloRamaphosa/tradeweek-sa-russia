FROM nginx:alpine

# Copy site files
COPY . /usr/share/nginx/html

# Nginx config for clean SPA-style routing
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
