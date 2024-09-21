# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML, CSS, and JavaScript files from the public directory to the Nginx default public directory
COPY public/index.html /usr/share/nginx/html
COPY public/styling.css /usr/share/nginx/html
COPY public/javascript.js /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
