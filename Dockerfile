# Base image
FROM nginx:alpine

# Copy the built Svelte app to the Nginx web root
COPY svelte-app/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
