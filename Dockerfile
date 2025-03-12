FROM alpine:3.21
ARG VERSION=2.1.0

RUN apk add --no-cache build-base musl-dev zlib-dev openssl-dev && \
    wget https://ftp.gnu.org/gnu/wget/wget2-${VERSION}.tar.gz -O /tmp/wget2-${VERSION}.tar.gz && \
    tar -xvzf /tmp/wget2-${VERSION}.tar.gz -C /tmp && cd /tmp/wget2-${VERSION} && \
    ./configure && make -j $(nproc) && make install && \
    cd .. && rm -rf /tmp/wget2-${VERSION}.tar.gz /tmp/wget2-${VERSION} && apk del build-base musl-dev zlib-dev openssl-dev

ENTRYPOINT ["wget2"]
