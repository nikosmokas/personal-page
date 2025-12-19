FROM nginx:1.25-alpine

# Remove default nginx site
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site into nginx
COPY . /usr/share/nginx/html

# Expose port 80 (documentation, not firewall)
EXPOSE 80
