FROM mybase:latest
RUN apt-get update && \
    apt-get install -y nginx && \
    echo "daemon off;" >> /etc/nginx/nginx.conf && \
    mkdir /etc/service/nginx && \
    chmod 1755 /etc/service/nginx && \
    echo '#!/bin/sh' > /etc/service/nginx/run && \
    echo 'exec /usr/sbin/nginx' >> /etc/service/nginx/run && \
    chmod +x /etc/service/nginx/run && \
    mkdir -p /etc/service/nginx/log && \
    mkdir -p /etc/service/nginx/log/main && \
    echo '#!/bin/sh' > /etc/service/nginx/log/run && \
    echo 'exec 2>&1' >> /etc/service/nginx/log/run && \
    echo 'exec multilog t ./main' >> /etc/service/nginx/log/run && \
    chmod +x /etc/service/nginx/log/run
CMD ["/usr/bin/svscan", "/etc/service", "&", "sleep", "infinity"]
