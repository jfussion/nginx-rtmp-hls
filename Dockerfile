FROM alfg/nginx-rtmp

RUN set -x ; \
  addgroup -g 82 -S www-data ; \
  adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

COPY nginx.conf /etc/nginx/nginx.conf
ADD start.sh /start.sh

RUN mkdir -p /opt/data/hls

RUN ["chmod", "+x", "/start.sh"]
CMD /start.sh
