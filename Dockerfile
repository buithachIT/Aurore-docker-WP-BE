# Dockerfile

FROM wordpress:latest

# Copy wp-content từ local vào container để giữ plugin, theme, uploads
COPY ./wp-content /var/www/html/wp-content
