# schmunk42/php
# -------------
# Basic nginx + php:fpm setup

FROM nginx:1.9

ADD nginx.conf /etc/nginx/nginx.conf
ADD gzip.conf /etc/nginx/conf.d/gzip.conf

ADD run.sh /root/run.sh
CMD ["/root/run.sh"]