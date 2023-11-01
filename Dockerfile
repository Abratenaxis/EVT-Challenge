# Use the official Nginx base image
FROM nginx

# Copy SSL certificates to the container
COPY ssl/nginx_evt.crt /etc/nginx/ssl/nginx.crt
COPY ssl/nginx_evt.key /etc/nginx/ssl/nginx.key

# Copy Nginx configuration file with SSL settings
COPY nginx.conf /etc/nginx/nginx.conf

COPY ssl/ /etc/nginx/ssl/

COPY index.html /usr/share/nginx/html
COPY github.png /usr/share/nginx/html
COPY linkedin.png /usr/share/nginx/html
COPY just-another-skull-4k-wallpaper-3440x1440.jpg /usr/share/nginx/html

EXPOSE 80
# Expose port 443 for SSL
EXPOSE 443


LABEL Name=nginx Version=0.0.1

# Set the default command to start Nginx with the specified configuration
CMD ["nginx", "-g", "daemon off;"]
