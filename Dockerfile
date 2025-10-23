FROM quay.io/centos/centos:stream9

# instalar Apache directamente
RUN dnf -y install httpd

# copiar archivos locales
COPY ./web /var/www/html

# exponer puerto 80
EXPOSE 80

# ejecutar apache en primer plano
CMD ["httpd", "-DFOREGROUND"]
