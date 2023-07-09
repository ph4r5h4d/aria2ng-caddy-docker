FROM caddy:latest
LABEL maintainer="Farshad Nematdoust <farshad@nematdoust.com>"
ARG ARIANG_VERSION=1.3.6

COPY Caddyfile /etc/caddy/Caddyfile
WORKDIR /var/www/aria2ng
RUN wget --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VERSION}/AriaNg-${ARIANG_VERSION}.zip \
    -O ariang.zip \
    && unzip ariang.zip \
    && rm ariang.zip \
    && chmod -R 755 ./
EXPOSE 8080
