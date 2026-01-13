FROM php:8.2-apache

# อัปเดตและติดตั้ง Extension ที่จำเป็นสำหรับ MySQL/MariaDB
RUN docker-php-ext-install mysqli pdo pdo_mysql

# เปิดใช้งาน mod_rewrite ของ Apache (เผื่อใช้ .htaccess)
RUN a2enmod rewrite

# ตั้งค่า Permission เบื้องต้น (Optional)
RUN chown -R www-data:www-data /var/www/html
