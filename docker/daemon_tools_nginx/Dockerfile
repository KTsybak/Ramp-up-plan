FROM mybase:latest
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir  /etc/service/nginx
RUN chmod 1755 /etc/service/nginx

RUN echo '#!/bin/sh' > /etc/service/nginx/run
RUN echo 'exec /usr/sbin/nginx' >> /etc/service/nginx/run
RUN chmod +x /etc/service/nginx/run

RUN mkdir -p /etc/service/nginx/log
RUN mkdir -p /etc/service/nginx/log/main
RUN echo '#!/bin/sh' > /etc/service/nginx/log/run
RUN echo 'exec 2>&1' >> /etc/service/nginx/log/run
RUN echo 'exec multilog t ./main' >> /etc/service/nginx/log/run
RUN chmod +x /etc/service/nginx/log/run
CMD ["/usr/bin/svscan", "/etc/service", "&", "sleep", "infinity"]
