# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration and HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
