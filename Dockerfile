FROM alpine:3.9.6
ARG VERSION=1.0.0
LABEL version=1.0.0
LABEL description="SearX is a metasearch engine, inspired by the seeks project."
LABEL maintainer="Fred Brooker <f@mxd.cz> Twitter: @FredBrooker"
ENV BASE_URL=False IMAGE_PROXY=false UID=991 GID=991
RUN apk -U upgrade \
 && apk add -t build-dependencies \
    build-base \
    python3-dev \
    libffi-dev \
    libxslt-dev \
    libxml2-dev \
    openssl-dev \
    tar \
    ca-certificates \
 && apk add \
    su-exec \
    python3 \
    libxml2 \
    libxslt \
    openssl \
    tini \
 && mkdir /usr/local/searx && cd /usr/local/searx \
 && wget -qO- https://github.com/asciimoo/searx/archive/v${VERSION}.tar.gz | tar xz --strip 1 \
 && pip3 install --upgrade setuptools \
 && pip3 install --no-cache -r requirements.txt \
 && sed -i "s/127.0.0.1/0.0.0.0/g" searx/settings.yml \
 && apk del build-dependencies \
 && rm -f /var/cache/apk/*
COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
EXPOSE 8888
CMD ["run.sh"]
