FROM php:8.2-apache

# ติดตั้ง Extension ที่จำเป็น
RUN docker-php-ext-install mysqli pdo pdo_mysql

# เปิดใช้งาน mod_rewrite
RUN a2enmod rewrite

# --- เพิ่มส่วนนี้เข้าไปครับ ---
# ตั้งค่า PHP Timezone ให้เป็น Asia/Bangkok
RUN echo "date.timezone = Asia/Bangkok" > /usr/local/etc/php/conf.d/timezone.ini
# -------------------------

# ตั้งค่า Permission (ถ้ามี)
RUN chown -R www-data:www-data /var/www/html
