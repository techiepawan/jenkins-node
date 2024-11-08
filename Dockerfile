e the official Nginx image from Docker Hub
FROM nginx:latest

# Copy a custom index.html file into the container
COPY ./index.html /usr/share/nginx/html/index.html

# Expose the default HTTP port
EXPOSE 80

# Run Nginx in the foreground (required for Docker container)
CMD ["nginx", "-g", "daemon off;"]

