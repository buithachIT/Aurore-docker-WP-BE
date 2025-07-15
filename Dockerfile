# Sử dụng image WordPress official
FROM wordpress:latest

# Copy wp-content (plugin, theme, uploads) vào image
COPY ./wp-content /var/www/html/wp-content

# Phân quyền cho web server user
RUN chown -R www-data:www-data /var/www/html/wp-content

# Đặt biến môi trường mặc định để connect DB bên ngoài (có thể override khi deploy)
ENV WORDPRESS_DB_HOST=db_host
ENV WORDPRESS_DB_USER=db_user
ENV WORDPRESS_DB_PASSWORD=db_password
ENV WORDPRESS_DB_NAME=db_name
